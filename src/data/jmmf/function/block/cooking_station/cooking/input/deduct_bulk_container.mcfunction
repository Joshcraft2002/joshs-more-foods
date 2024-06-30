#get smallest bulk number
execute store result score @s jmmf.count run scoreboard players get @s jmmf.max_stack_size
scoreboard players operation @s jmmf.count -= @s jmmf.count.7
execute unless score @s jmmf.count.0 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.0
execute unless score @s jmmf.count.1 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.1
execute unless score @s jmmf.count.2 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.2
execute unless score @s jmmf.count.3 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.3
execute unless score @s jmmf.count.4 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.4
execute unless score @s jmmf.count.5 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.5
execute unless score @s jmmf.count.6 matches 0 run scoreboard players operation @s jmmf.count < @s jmmf.count.6

scoreboard players operation @s jmmf.count.0 -= @s jmmf.count
execute if score @s jmmf.count.0 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s jmmf.count.0
execute unless score @s jmmf.count.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:1b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.1 -= @s jmmf.count
execute if score @s jmmf.count.1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s jmmf.count.1
execute unless score @s jmmf.count.1 matches 1.. run data modify block ~ ~ ~ Items[{Slot:2b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.2 -= @s jmmf.count
execute if score @s jmmf.count.2 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:10b}].count int 1 run scoreboard players get @s jmmf.count.2
execute unless score @s jmmf.count.2 matches 1.. run data modify block ~ ~ ~ Items[{Slot:10b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.3 -= @s jmmf.count
execute if score @s jmmf.count.3 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:11b}].count int 1 run scoreboard players get @s jmmf.count.3
execute unless score @s jmmf.count.3 matches 1.. run data modify block ~ ~ ~ Items[{Slot:11b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.4 -= @s jmmf.count
execute if score @s jmmf.count.4 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:19b}].count int 1 run scoreboard players get @s jmmf.count.4
execute unless score @s jmmf.count.4 matches 1.. run data modify block ~ ~ ~ Items[{Slot:19b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.5 -= @s jmmf.count
execute if score @s jmmf.count.5 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:20b}].count int 1 run scoreboard players get @s jmmf.count.5
execute unless score @s jmmf.count.5 matches 1.. run data modify block ~ ~ ~ Items[{Slot:20b}].id set value "minecraft:air"

scoreboard players operation @s jmmf.count.6 -= @s jmmf.count
execute if score @s jmmf.count.6 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s jmmf.count.6
execute unless score @s jmmf.count.6 matches 1.. run data modify block ~ ~ ~ Items[{Slot:22b}].id set value "minecraft:air"