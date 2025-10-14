## Process a detected Recipe
# Return 1 if recipe is ready, 0 if not

# Check if recipe can output
execute store result score jmmf:temp jmmf.data run function jmmf:block/cooking_station/cooking/is_output_occupied

# Store output data for later use
execute unless score jmmf:temp jmmf.data matches 1 run data modify entity @s equipment.head.components."minecraft:custom_data".jmmf.desired_item set from storage jmmf:cooking_station temp.output.desired

# Clear out the hands
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand with air

# If output is blocked, stop here
execute if score jmmf:temp jmmf.data matches 1 run return fail

# Copy temp values for proper use
scoreboard players operation @s jmmf.craft_count = jmmf:cooking_station jmmf.craft_count
scoreboard players operation @s jmmf.is_bulk = jmmf:cooking_station jmmf.is_bulk
scoreboard players operation @s jmmf.needs_container = jmmf:cooking_station jmmf.needs_container

return 1
