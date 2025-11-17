## Recipes that require a cooking pot and water

scoreboard players set @s jmmf.is_water_recipe 1

# empty water
execute if data storage jmmf:cooking_station {liquid:{input:{id:"minecraft:bucket"}}} run function jmmf:block/cooking_station/cooking/empty_water

execute if function jmmf:recipe/cooking_station/cooking_pot/boiled_egg run return 1
execute if function jmmf:recipe/cooking_station/cooking_pot/bone_broth run return 1
execute if function jmmf:recipe/cooking_station/cooking_pot/champorado run return 1
execute if function jmmf:recipe/cooking_station/cooking_pot/red_rice run return 1
execute if function jmmf:recipe/cooking_station/cooking_pot/rice run return 1
execute if function jmmf:recipe/cooking_station/cooking_pot/rotten_stew run return 1