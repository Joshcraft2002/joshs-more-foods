execute if score @s jmmf.is_water_recipe matches 1 run scoreboard players remove @s jmmf.water_level 1

execute if score @s jmmf.recipe_id matches 1 run function jmmf:recipe/cooking_station/cooking_pot/rice/output
execute if score @s jmmf.recipe_id matches 6 run function jmmf:recipe/cooking_station/cooking_pot/boiled_egg/output
execute if score @s jmmf.recipe_id matches 7 run function jmmf:recipe/cooking_station/frying_pan/fried_egg/output
execute if score @s jmmf.recipe_id matches 8 run function jmmf:recipe/cooking_station/cooking_pot/red_rice/output
execute if score @s jmmf.recipe_id matches 9 run function jmmf:recipe/cooking_station/cooking_pot/red_rice_bowl/output
execute if score @s jmmf.recipe_id matches 10 run function jmmf:recipe/cooking_station/black_tea_leaves/output

execute if score @s jmmf.recipe_id matches 133 run function jmmf:recipe/cooking_station/pie/chicken_pot_pie/output
execute if score @s jmmf.recipe_id matches 135 run function jmmf:recipe/cooking_station/pie/pork_pie/output
execute if score @s jmmf.recipe_id matches 136 run function jmmf:recipe/cooking_station/pie/steak_pie/output

execute if score @s jmmf.recipe_id matches 190 run function jmmf:recipe/cooking_station/cooking_pot/rotten_stew/output
execute if score @s jmmf.recipe_id matches 191 run function jmmf:recipe/cooking_station/cooking_pot/bone_broth/output
execute if score @s jmmf.recipe_id matches 192 run function jmmf:recipe/cooking_station/cooking_pot/egg_drop_soup/output

execute if score @s jmmf.recipe_id matches 300 run function jmmf:recipe/cooking_station/frying_pan/fried_rice/output
execute if score @s jmmf.recipe_id matches 301 run function jmmf:recipe/cooking_station/cooking_pot/champorado/output

execute if score @s jmmf.recipe_id matches 360 run function jmmf:recipe/cooking_station/cooking_pot/tea/sweet_berry_tea/output
execute if score @s jmmf.recipe_id matches 361 run function jmmf:recipe/cooking_station/cooking_pot/tea/cornflower_tea/output
execute if score @s jmmf.recipe_id matches 362 run function jmmf:recipe/cooking_station/cooking_pot/tea/dandelion_tea/output
execute if score @s jmmf.recipe_id matches 363 run function jmmf:recipe/cooking_station/cooking_pot/tea/green_tea/output
execute if score @s jmmf.recipe_id matches 364 run function jmmf:recipe/cooking_station/cooking_pot/tea/rose_tea/output
execute if score @s jmmf.recipe_id matches 365 run function jmmf:recipe/cooking_station/cooking_pot/tea/spruce_tea/output
execute if score @s jmmf.recipe_id matches 366 run function jmmf:recipe/cooking_station/cooking_pot/tea/sakura_tea/output
execute if score @s jmmf.recipe_id matches 367 run function jmmf:recipe/cooking_station/cooking_pot/tea/bamboo_tea/output
execute if score @s jmmf.recipe_id matches 368 run function jmmf:recipe/cooking_station/cooking_pot/tea/beetroot_tea/output
execute if score @s jmmf.recipe_id matches 369 run function jmmf:recipe/cooking_station/cooking_pot/tea/birch_tea/output
execute if score @s jmmf.recipe_id matches 370 run function jmmf:recipe/cooking_station/cooking_pot/tea/black_tea/output
execute if score @s jmmf.recipe_id matches 371 run function jmmf:recipe/cooking_station/cooking_pot/tea/chamomile_tea/output
execute if score @s jmmf.recipe_id matches 372 run function jmmf:recipe/cooking_station/cooking_pot/tea/sunflower_tea/output

execute if score @s jmmf.recipe_id matches 1001 run function jmmf:recipe/cooking_station/update_cookbook/output
execute if score @s jmmf.recipe_id matches 1002 run function jmmf:recipe/cooking_station/update_nutritionbook/output