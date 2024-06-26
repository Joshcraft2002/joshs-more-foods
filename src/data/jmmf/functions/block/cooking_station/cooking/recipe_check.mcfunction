# reset flags(?)
scoreboard players set @s jmmf.active 1
# ensuring only one recipe function runs
scoreboard players set @s jmmf.data 0
scoreboard players set @s jmmf.recipe_id 0

# read input
execute store result score @s jmmf.count.7 run data get block ~ ~ ~ Items[{Slot:16b}].count
function jmmf:block/cooking_station/cooking/input/read_block

# update nutrition book
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:nutritionbook"}}}, count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/update_nutritionbook/check
# update cookbook
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:cookbook"}}}, count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/update_cookbook/check

# fill water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fill_water
# empty water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/empty_water

# rice
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:wheat_seeds", count:6}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rice/check
# boiled egg
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:egg", count:1}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/check
# fried egg
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:egg", count:1}]}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fried_egg/check

# bowl recipes
execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{id:"minecraft:bowl"}}} run function jmmf:block/cooking_station/cooking/recipes/bowl_check

# chicken pot pie
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 3 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:chicken", count:1}, {id:"minecraft:carrot", count:1}, {id:"minecraft:brown_mushroom", count:1}], container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:pie_crust"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/chicken_pot_pie/check

# tea recipes
execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:teacup"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/teacup_check

# nothing, does reset gui
execute if score @s jmmf.recipe_id matches 0 run function jmmf:block/cooking_station/cooking/reset