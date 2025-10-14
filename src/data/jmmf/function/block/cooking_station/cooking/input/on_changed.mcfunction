# Reset recipe flags
scoreboard players set @s jmmf.is_water_recipe 0
scoreboard players set @s jmmf.craft_count 0

# Read input
execute store result score @s jmmf.count.7 run data get block ~ ~ ~ Items[{Slot:16b}].count
function jmmf:block/cooking_station/cooking/input/read_block

# Try to detect a recipe, reset and return if none found
execute unless function jmmf:block/cooking_station/cooking/recipe_check run return run function jmmf:block/cooking_station/cooking/reset

# Check if recipe is instant, if so, finish cooking immediately
execute if score jmmf:cooking_station jmmf.is_instant matches 1 run return run function jmmf:block/cooking_station/cooking/on_cooking_finished

# Otherwise, start cooking
scoreboard players set @s jmmf.active 1