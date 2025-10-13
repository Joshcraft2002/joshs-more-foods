## Recipes that have no cookware requirement

scoreboard players set @s jmmf.is_water_recipe 0

# rice bowl
execute if function jmmf:recipe/cooking_station/rice_bowl run return 1

# black tea leaves
execute if function jmmf:recipe/cooking_station/black_tea_leaves run return 1

# # pie crust recipes
# execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:pie_crust"}}}}}} run function jmmf:block/cooking_station/cooking/recipes/pie_check

return 0
