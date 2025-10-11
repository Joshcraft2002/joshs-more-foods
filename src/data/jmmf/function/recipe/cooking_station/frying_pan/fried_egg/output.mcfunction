function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.output matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie
execute if score @s jmmf.count.output matches 0 run item modify block ~ ~ ~ container.16 jmmf:fried_egg
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.output 1