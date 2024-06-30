function jmmf:block/cooking_station/cooking/input/deduct_container

#set output if empty, otherwise change count
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with beetroot_soup
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:egg_drop_soup
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1