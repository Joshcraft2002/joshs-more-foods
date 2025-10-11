# reset flags(?)
scoreboard players set @s jmmf.active 1
scoreboard players set @s jmmf.recipe_id 0

# read input
execute store result score @s jmmf.count.output run data get block ~ ~ ~ Items[{Slot:16b}].count
function jmmf:block/cooking_station/cooking/input/read_block

# Check recipes
function jmmf:recipe/cooking_station/detect_recipe

# If no recipe found, just reset
execute if score @s jmmf.recipe_id matches 0 run function jmmf:block/cooking_station/cooking/reset