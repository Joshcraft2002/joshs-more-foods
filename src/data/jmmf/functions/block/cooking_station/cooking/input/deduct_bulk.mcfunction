scoreboard players set @s jmmf.count 64
scoreboard players operation @s jmmf.count -= @s jmmf.count.7
execute unless score @s jmmf.count.0 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.0
execute unless score @s jmmf.count.1 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.1
execute unless score @s jmmf.count.2 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.2
execute unless score @s jmmf.count.3 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.3
execute unless score @s jmmf.count.4 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.4
execute unless score @s jmmf.count.5 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.5
execute unless score @s jmmf.count.6 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.6

execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players operation @s jmmf.count.0 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation @s jmmf.count.1 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players operation @s jmmf.count.2 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation @s jmmf.count.3 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players operation @s jmmf.count.4 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players operation @s jmmf.count.5 -= @s jmmf.count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players operation @s jmmf.count.6 -= @s jmmf.count