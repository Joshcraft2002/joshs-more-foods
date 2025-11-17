## Recipes that require a cooking pot

scoreboard players set @s jmmf.is_water_recipe 0

# fill water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/fill_water

execute if function jmmf:recipe/cooking_station/cooking_pot/egg_drop_soup run return 1