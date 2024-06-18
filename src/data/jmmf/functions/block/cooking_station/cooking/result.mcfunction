#reset timer
scoreboard players set @s jmmf.cook_time 4

execute if score @s jmmf.recipeid matches 1 run function jmmf:block/cooking_station/cooking/recipes/rice/output
execute if score @s jmmf.recipeid matches 2 run function jmmf:block/cooking_station/cooking/recipes/rice_bowl/output
execute if score @s jmmf.recipeid matches 6 run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/output
execute if score @s jmmf.recipeid matches 7 run function jmmf:block/cooking_station/cooking/recipes/fried_egg/output

execute if score @s jmmf.recipeid matches 133 run function jmmf:block/cooking_station/cooking/recipes/chicken_pot_pie/output

execute if score @s jmmf.recipeid matches 190 run function jmmf:block/cooking_station/cooking/recipes/rotten_stew/output

execute if score @s jmmf.recipeid matches 300 run function jmmf:block/cooking_station/cooking/recipes/fried_rice/output
execute if score @s jmmf.recipeid matches 301 run function jmmf:block/cooking_station/cooking/recipes/champorado/output

execute if score @s jmmf.recipeid matches 360 run function jmmf:block/cooking_station/cooking/recipes/sweet_berry_tea/output
execute if score @s jmmf.recipeid matches 361 run function jmmf:block/cooking_station/cooking/recipes/cornflower_tea/output
execute if score @s jmmf.recipeid matches 362 run function jmmf:block/cooking_station/cooking/recipes/dandelion_tea/output
execute if score @s jmmf.recipeid matches 363 run function jmmf:block/cooking_station/cooking/recipes/green_tea/output
execute if score @s jmmf.recipeid matches 364 run function jmmf:block/cooking_station/cooking/recipes/rose_tea/output
execute if score @s jmmf.recipeid matches 365 run function jmmf:block/cooking_station/cooking/recipes/spruce_tea/output
execute if score @s jmmf.recipeid matches 366 run function jmmf:block/cooking_station/cooking/recipes/sakura_tea/output

execute if score @s jmmf.recipeid matches 1000 run function jmmf:block/cooking_station/cooking/recipes/empty_liquid/output
execute if score @s jmmf.recipeid matches 1001 run function jmmf:block/cooking_station/cooking/recipes/update_cookbook/output
execute if score @s jmmf.recipeid matches 1002 run function jmmf:block/cooking_station/cooking/recipes/update_nutritionbook/output