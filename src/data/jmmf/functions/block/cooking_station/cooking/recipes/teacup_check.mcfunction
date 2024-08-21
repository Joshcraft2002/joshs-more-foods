#sweet berry tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:sweet_berries", Count:1b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/sweet_berry_tea/check

#cornflower tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:cornflower", Count:2b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/cornflower_tea/check

#dandelion tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:dandelion", Count:2b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/dandelion_tea/check

#green tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:3b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/green_tea/check

#rose tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rose_bush", Count:2b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rose_tea/check

#spruce tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:spruce_leaves", Count:4b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/spruce_tea/check

#sakura tea
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:pink_petals", Count:2b}, {tag:{smithed:{id:'jmmf:tea_leaves'}}, Count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/sakura_tea/check
