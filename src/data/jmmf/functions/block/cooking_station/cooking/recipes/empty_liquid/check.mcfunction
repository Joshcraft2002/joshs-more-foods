execute if score @s jmmf.count.7 matches 64.. run scoreboard players set jmmf:temp1 jmmf.data 2

execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station {output:{id:"minecraft:bucket"}}
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data unless data storage jmmf:cooking_station {output:{}}

execute if score jmmf:temp1 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/recipes/empty_liquid/setup
