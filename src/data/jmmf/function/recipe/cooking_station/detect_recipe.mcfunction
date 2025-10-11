## Recipes that have no cookware requirement

scoreboard players set @s jmmf.is_water_recipe 0

# # update nutrition book
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:nutritionbook"}}}, count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/update_nutritionbook/check
# # update cookbook
# execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:cookbook"}}}, count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/update_cookbook/check

# # fill water
# execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fill_water
# # empty water
# execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/empty_water

# black tea leaves
execute if function jmmf:recipe/cooking_station/black_tea_leaves/check run return 1

# # pie crust recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:pie_crust"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/pie_check
