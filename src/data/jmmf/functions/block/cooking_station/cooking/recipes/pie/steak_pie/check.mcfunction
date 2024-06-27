#container and output must have room for 2 output
execute if score @s jmmf.count.7 matches 63.. run return 1
execute if score @s jmmf.count.6 matches ..1 run return 1

execute store success score jmmf:recipe_validation jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:steak_pie"}}}}}
execute if score jmmf:recipe_validation jmmf.data matches 0 if data storage jmmf:cooking_station {output:{}} run return 1

scoreboard players set @s jmmf.recipe_id 136
