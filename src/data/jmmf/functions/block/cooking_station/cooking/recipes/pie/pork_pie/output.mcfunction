function jmmf:block/cooking_station/cooking/input/deduct_container
#remove an additional bowl
execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players remove @s jmmf.count.6 1

#set output if empty, otherwise increment 2
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:pumpkin_pie
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:pie/pork_pie
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 2