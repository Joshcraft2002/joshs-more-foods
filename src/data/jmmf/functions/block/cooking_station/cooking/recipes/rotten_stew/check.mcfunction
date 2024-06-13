#container and output must have room for 3 output
execute if score @s jmmf.count.7 matches 62.. run scoreboard players set jmmf:temp1 jmmf.data 2
execute if score @s jmmf.count.6 matches ..2 run scoreboard players set jmmf:temp1 jmmf.data 2

execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{joshmats:{id:"jmmf:rotten_stew"}}}}}
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data unless data storage jmmf:cooking_station {output:{}}

execute if score jmmf:temp1 jmmf.data matches 1 run scoreboard players set @s jmmf.recipeid 190
