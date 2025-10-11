## Recipes that require a cooking pot and water

scoreboard players set @s jmmf.is_water_recipe 1

# empty water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} run function jmmf:block/cooking_station/cooking/empty_water

# rice
execute if function jmmf:recipe/cooking_station/cooking_pot/rice/check run return 1

# bone broth
execute if function jmmf:recipe/cooking_station/cooking_pot/bone_broth/check run return 1

return 0