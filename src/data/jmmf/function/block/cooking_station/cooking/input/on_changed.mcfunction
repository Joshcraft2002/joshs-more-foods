# reset flags(?)
scoreboard players set @s jmmf.active 1
scoreboard players set @s jmmf.recipe_id 0
scoreboard players set @s jmmf.is_water_recipe 0
scoreboard players set @s jmmf.craft_count 0

# read input
execute store result score @s jmmf.count.output run data get block ~ ~ ~ Items[{Slot:16b}].count
function jmmf:block/cooking_station/cooking/input/read_block

# Check recipes
execute if score @s jmmf.recipe_id matches 0 if score @s jmmf.cook_mode matches 1 if score @s jmmf.water_level matches 1.. run function jmmf:recipe/cooking_station/cooking_pot/detect_water_recipe
execute if score @s jmmf.recipe_id matches 0 if score @s jmmf.cook_mode matches 1 unless score @s jmmf.water_level matches 1.. run function jmmf:recipe/cooking_station/cooking_pot/detect_recipe
execute if score @s jmmf.recipe_id matches 0 if score @s jmmf.cook_mode matches 2 if score @s jmmf.water_level matches 1.. run function jmmf:recipe/cooking_station/frying_pan/detect_water_recipe
execute if score @s jmmf.recipe_id matches 0 if score @s jmmf.cook_mode matches 2 unless score @s jmmf.water_level matches 1.. run function jmmf:recipe/cooking_station/frying_pan/detect_recipe
execute if score @s jmmf.recipe_id matches 0 run function jmmf:recipe/cooking_station/detect_recipe

# If no recipe found, just reset
execute if score @s jmmf.recipe_id matches 0 run function jmmf:block/cooking_station/cooking/reset