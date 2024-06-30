function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty then modify it, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with written_book
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:nutritionbook
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1