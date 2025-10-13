## Assumes desired output item is in mainhand, checks if it can fit in output slot
# Returns fail (0) if it can fit, success (1) if output is occupied or cannot fit

# Get the value of the desired output temporarily in the mainhand
data modify storage jmmf:cooking_station temp.output.desired set from entity @s equipment.mainhand

# Get the max stack size of the desired output item, using an offhand reference item, removing its components, then filling the void with the mainhand item's
loot replace entity @s weapon.offhand fish \
    {\
        pools:[\
            {\
                rolls:1,\
                entries:[\
                    {\
                        type:"item",\
                        name:"stone",\
                        functions:[\
                            {\
                                function:"set_components",\
                                components:{\
                                    "!minecraft:max_stack_size":{},\
                                }\
                            },\
                            {\
                                function:"copy_components",\
                                source:"tool"\
                            }\
                        ]\
                    }\
                ]\
            }\
        ]\
    } \
    ~ ~ ~ mainhand

execute store result score jmmf:temp jmmf.max_stack_size run data get entity @s equipment.offhand.components."minecraft:max_stack_size"
execute if items entity @s weapon.offhand *[max_stack_size=64] run scoreboard players set jmmf:temp jmmf.max_stack_size 64

# tellraw @a ["max stack size: ",{type:"score",score:{name:"jmmf:temp1",objective:"jmmf.count.output"}}]

# Get available space, then compare against how many items this recipe crafts
#  - Success if there is enough space (fail cannot distinguish between different items)
scoreboard players operation jmmf:temp jmmf.count.output = jmmf:temp jmmf.max_stack_size
scoreboard players operation jmmf:temp jmmf.count.output -= @s jmmf.count.output

# tellraw @a ["free output: ",{type:"score",score:{name:"jmmf:temp",objective:"jmmf.count.output"}}]
# tellraw @a ["craft count: ",{type:"score",score:{name:"@s",objective:"jmmf.craft_count"}}]
execute if score jmmf:cooking_station jmmf.craft_count > jmmf:temp jmmf.count.output run return 1

# If there is no current item in output slot, fail
execute unless data storage jmmf:cooking_station {output:{}} run return fail

# Copy current output item to temp current output
data modify storage jmmf:cooking_station temp.output.current set from storage jmmf:cooking_station output

# Ignore item count and slot
data remove storage jmmf:cooking_station temp.output.desired.count
data remove storage jmmf:cooking_station temp.output.current.count
data remove storage jmmf:cooking_station temp.output.current.Slot

# Check whether the items match, return fail if they do
return run data modify storage jmmf:cooking_station temp.output.current set from storage jmmf:cooking_station temp.output.desired



# All checks passed, output is occupied or cannot fit, so success
return 1