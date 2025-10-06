scoreboard players remove @s jmmf.count.0 1
execute if score @s jmmf.count.0 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s jmmf.count.0
execute unless score @s jmmf.count.0 matches 1.. run data remove block ~ ~ ~ Items[{Slot:1b}]

scoreboard players remove @s jmmf.count.1 1
execute if score @s jmmf.count.1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s jmmf.count.1
execute unless score @s jmmf.count.1 matches 1.. run data remove block ~ ~ ~ Items[{Slot:2b}]

scoreboard players remove @s jmmf.count.2 1
execute if score @s jmmf.count.2 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:10b}].count int 1 run scoreboard players get @s jmmf.count.2
execute unless score @s jmmf.count.2 matches 1.. run data remove block ~ ~ ~ Items[{Slot:10b}]

scoreboard players remove @s jmmf.count.3 1
execute if score @s jmmf.count.3 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:11b}].count int 1 run scoreboard players get @s jmmf.count.3
execute unless score @s jmmf.count.3 matches 1.. run data remove block ~ ~ ~ Items[{Slot:11b}]

scoreboard players remove @s jmmf.count.4 1
execute if score @s jmmf.count.4 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:19b}].count int 1 run scoreboard players get @s jmmf.count.4
execute unless score @s jmmf.count.4 matches 1.. run data remove block ~ ~ ~ Items[{Slot:19b}]

scoreboard players remove @s jmmf.count.5 1
execute if score @s jmmf.count.5 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:20b}].count int 1 run scoreboard players get @s jmmf.count.5
execute unless score @s jmmf.count.5 matches 1.. run data remove block ~ ~ ~ Items[{Slot:20b}]

scoreboard players remove @s jmmf.count.container 1
execute if score @s jmmf.count.container matches 1.. run execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s jmmf.count.container
execute unless score @s jmmf.count.container matches 1.. run data remove block ~ ~ ~ Items[{Slot:22b}]