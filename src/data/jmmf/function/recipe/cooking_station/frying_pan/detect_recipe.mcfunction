## Recipes that require a frying pan

scoreboard players set @s jmmf.is_water_recipe 0

# fill water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/fill_water

execute if function jmmf:recipe/cooking_station/frying_pan/fried_egg run return 1
execute if function jmmf:recipe/cooking_station/frying_pan/fried_rice run return 1

# # bowl recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{id:"minecraft:bowl"}}} run function jmmf:block/cooking_station/cooking/recipes/bowl_check
# # pie crust recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:pie_crust"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/pie_check
# # teacup recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:teacup"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/teacup_check

# returns 0 by default