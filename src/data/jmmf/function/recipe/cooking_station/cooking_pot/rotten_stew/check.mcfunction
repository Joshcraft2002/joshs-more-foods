#container and output must have room for 3 output
execute if score @s jmmf.count.7 matches 62.. run return 1
execute if score @s jmmf.count.6 matches ..2 run return 1

execute store success score jmmf:recipe_validation jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:rotten_stew"}}}}}
execute if score jmmf:recipe_validation jmmf.data matches 0 if data storage jmmf:cooking_station {output:{}} run return 1

scoreboard players set @s jmmf.recipe_id 190
