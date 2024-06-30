# output must not be full
execute if score @s jmmf.count.7 matches 16.. run return 1

# check if output either empty or the item we're making anyway
execute store success score jmmf:recipe_validation jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:cookbook"}}}}}
execute if score jmmf:recipe_validation jmmf.data matches 0 if data storage jmmf:cooking_station {output:{}} run return 1

scoreboard players set @s jmmf.recipe_id 1001