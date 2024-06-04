function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise add in bulk
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:bucket
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1
scoreboard players set @s jmmf.water_level 0