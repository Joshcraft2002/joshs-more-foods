## Recipes that require a frying pan and water

scoreboard players set @s jmmf.is_water_recipe 1

# empty water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} run function jmmf:block/cooking_station/cooking/empty_water