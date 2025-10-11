function jmmf:block/cooking_station/cooking/input/deduct_container
#remove an additional 2 bowls
execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players remove @s jmmf.count.6 2

#set output if empty, otherwise increment 3
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:rotten_flesh
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:rotten_stew
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 3
scoreboard players remove @s jmmf.water_level 1