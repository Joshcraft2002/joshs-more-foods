scoreboard players set @s jmmf.water_level 16

scoreboard players remove @s jmmf.count.8 1
execute if score @s jmmf.count.8 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s jmmf.count.8
execute unless score @s jmmf.count.8 matches 1.. run data modify block ~ ~ ~ Items[{Slot:4b}].id set value "minecraft:air"

execute if score @s jmmf.count.9 matches 0 run item replace block ~ ~ ~ container.5 with bucket
execute store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players add @s jmmf.count.9 1
