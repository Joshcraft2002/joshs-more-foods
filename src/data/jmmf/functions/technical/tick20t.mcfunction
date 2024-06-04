execute as @e[tag=jmmf.cooking_station] at @s run function jmmf:block/cooking_station/cooking/tick

execute as @e[type=minecraft:armor_stand,tag=joshmats.morefoods.rice_making_station] at @s run function jmmf:technical/destroy_old_rice_makers

schedule function jmmf:technical/tick20t 20t