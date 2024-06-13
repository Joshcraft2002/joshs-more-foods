#sweet berry tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:sweet_berries", count:1b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/sweet_berry_tea/check

#cornflower tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:cornflower", count:2b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/cornflower_tea/check

#dandelion tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:dandelion", count:2b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/dandelion_tea/check

#green tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:3b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/green_tea/check

#rose tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rose_bush", count:2b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rose_tea/check

#spruce tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:spruce_leaves", count:4b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/spruce_tea/check

#sakura tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:pink_petals", count:2b}, {components:{"minecraft:custom_data":{smithed:{id:"jmmf:tea_leaves"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/sakura_tea/check
