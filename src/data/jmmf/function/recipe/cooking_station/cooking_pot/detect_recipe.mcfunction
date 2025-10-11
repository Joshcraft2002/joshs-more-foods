## Recipes that require a cooking pot

scoreboard players set @s jmmf.is_water_recipe 0

# fill water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/fill_water

# # red rice
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:wheat_seeds", count:3},{id:"minecraft:beetroot_seeds", count:3}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/red_rice/check
# # boiled egg
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:egg", count:1}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/check
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:blue_egg", count:1}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/check
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:brown_egg", count:1}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/check
# # egg_drop_soup
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["soup_base"]}}}, count:1}, {id:"minecraft:egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/egg_drop_soup/check
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["soup_base"]}}}, count:1}, {id:"minecraft:blue_egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/egg_drop_soup/check
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["soup_base"]}}}, count:1}, {id:"minecraft:brown_egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/egg_drop_soup/check

return 0