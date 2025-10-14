# Reset cook time timer
scoreboard players set @s jmmf.cook_time 4

execute if score @s jmmf.is_water_recipe matches 1 run scoreboard players remove @s jmmf.water_level 1

# Set output item if output slot is empty
# - don't know if I can squeeze this into a single line
execute if score @s jmmf.count.7 matches 0 run data modify block ~ ~ ~ Items[{Slot:16b}].id set from entity @s equipment.head.components."minecraft:custom_data".jmmf.desired_item.id
execute if score @s jmmf.count.7 matches 0 run data modify block ~ ~ ~ Items[{Slot:16b}].components set from entity @s equipment.head.components."minecraft:custom_data".jmmf.desired_item.components

# Deduct input items
execute if score @s jmmf.is_bulk matches 0 unless score @s jmmf.needs_container matches 0 run function jmmf:block/cooking_station/cooking/input/deduct_container
execute unless score @s jmmf.is_bulk matches 0 unless score @s jmmf.needs_container matches 0 run function jmmf:block/cooking_station/cooking/input/deduct_bulk_container
execute if score @s jmmf.is_bulk matches 0 if score @s jmmf.needs_container matches 0 run function jmmf:block/cooking_station/cooking/input/deduct
execute unless score @s jmmf.is_bulk matches 0 if score @s jmmf.needs_container matches 0 run function jmmf:block/cooking_station/cooking/input/deduct_bulk

# Increment craft output
# - Craft count is altered during bulk deduction to reflect actual crafted amount, may be refactored later
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players operation @s jmmf.count.7 += @s jmmf.craft_count