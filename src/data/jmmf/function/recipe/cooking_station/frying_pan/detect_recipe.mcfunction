## Recipes that require a frying pan

scoreboard players set @s jmmf.is_water_recipe 0

# # fill water
# execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fill_water
# # empty water
# execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/empty_water

# fried egg
execute if function jmmf:recipe/cooking_station/frying_pan/fried_egg/check run return 1

# # bowl recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{id:"minecraft:bowl"}}} run function jmmf:block/cooking_station/cooking/recipes/bowl_check
# # pie crust recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:pie_crust"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/pie_check
# # teacup recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:teacup"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/teacup_check

# returns 0 by default