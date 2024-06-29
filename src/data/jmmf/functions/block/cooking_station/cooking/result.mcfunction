#reset timer
scoreboard players set @s jmmf.cook_time 4

execute if score @s jmmf.recipe_id matches 1 run function jmmf:block/cooking_station/cooking/recipes/rice/output
execute if score @s jmmf.recipe_id matches 6 run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/output
execute if score @s jmmf.recipe_id matches 7 run function jmmf:block/cooking_station/cooking/recipes/fried_egg/output
execute if score @s jmmf.recipe_id matches 8 run function jmmf:block/cooking_station/cooking/recipes/red_rice/output
execute if score @s jmmf.recipe_id matches 9 run function jmmf:block/cooking_station/cooking/recipes/red_rice_bowl/output
execute if score @s jmmf.recipe_id matches 10 run function jmmf:block/cooking_station/cooking/recipes/black_tea_leaves/output

execute if score @s jmmf.recipe_id matches 133 run function jmmf:block/cooking_station/cooking/recipes/pie/chicken_pot_pie/output
execute if score @s jmmf.recipe_id matches 135 run function jmmf:block/cooking_station/cooking/recipes/pie/pork_pie/output
execute if score @s jmmf.recipe_id matches 136 run function jmmf:block/cooking_station/cooking/recipes/pie/steak_pie/output

execute if score @s jmmf.recipe_id matches 190 run function jmmf:block/cooking_station/cooking/recipes/rotten_stew/output
execute if score @s jmmf.recipe_id matches 191 run function jmmf:block/cooking_station/cooking/recipes/bone_broth/output
execute if score @s jmmf.recipe_id matches 192 run function jmmf:block/cooking_station/cooking/recipes/egg_drop_soup/output

execute if score @s jmmf.recipe_id matches 300 run function jmmf:block/cooking_station/cooking/recipes/fried_rice/output
execute if score @s jmmf.recipe_id matches 301 run function jmmf:block/cooking_station/cooking/recipes/champorado/output

execute if score @s jmmf.recipe_id matches 360 run function jmmf:block/cooking_station/cooking/recipes/tea/sweet_berry_tea/output
execute if score @s jmmf.recipe_id matches 361 run function jmmf:block/cooking_station/cooking/recipes/tea/cornflower_tea/output
execute if score @s jmmf.recipe_id matches 362 run function jmmf:block/cooking_station/cooking/recipes/tea/dandelion_tea/output
execute if score @s jmmf.recipe_id matches 363 run function jmmf:block/cooking_station/cooking/recipes/tea/green_tea/output
execute if score @s jmmf.recipe_id matches 364 run function jmmf:block/cooking_station/cooking/recipes/tea/rose_tea/output
execute if score @s jmmf.recipe_id matches 365 run function jmmf:block/cooking_station/cooking/recipes/tea/spruce_tea/output
execute if score @s jmmf.recipe_id matches 366 run function jmmf:block/cooking_station/cooking/recipes/tea/sakura_tea/output
execute if score @s jmmf.recipe_id matches 367 run function jmmf:block/cooking_station/cooking/recipes/tea/bamboo_tea/output
execute if score @s jmmf.recipe_id matches 368 run function jmmf:block/cooking_station/cooking/recipes/tea/beetroot_tea/output
execute if score @s jmmf.recipe_id matches 369 run function jmmf:block/cooking_station/cooking/recipes/tea/birch_tea/output
execute if score @s jmmf.recipe_id matches 370 run function jmmf:block/cooking_station/cooking/recipes/tea/black_tea/output
execute if score @s jmmf.recipe_id matches 371 run function jmmf:block/cooking_station/cooking/recipes/tea/chamomile_tea/output
execute if score @s jmmf.recipe_id matches 372 run function jmmf:block/cooking_station/cooking/recipes/tea/sunflower_tea/output

execute if score @s jmmf.recipe_id matches 1001 run function jmmf:block/cooking_station/cooking/recipes/update_cookbook/output
execute if score @s jmmf.recipe_id matches 1002 run function jmmf:block/cooking_station/cooking/recipes/update_nutritionbook/output