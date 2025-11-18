# Stop if too much bucket output
execute store result score @s jmmf.count.9 run data get block ~ ~ ~ Items[{Slot:5b}].count
execute if score @s jmmf.count.9 matches 16.. run return 1

execute store result score @s jmmf.count.8 run data get storage jmmf:cooking_station Items[{Slot: 4b}].count

execute store success score jmmf:recipe_validation jmmf.data if data storage jmmf:cooking_station {liquid:{output:{id:"minecraft:bucket"}}}
execute if score jmmf:recipe_validation jmmf.data matches 0 if data storage jmmf:cooking_station {liquid:{output:{}}} run return 1

scoreboard players set @s jmmf.water_level 16

scoreboard players remove @s jmmf.count.8 1
execute if score @s jmmf.count.8 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s jmmf.count.8
execute unless score @s jmmf.count.8 matches 1.. run data remove block ~ ~ ~ Items[{Slot:4b}]

execute if score @s jmmf.count.9 matches 0 run item replace block ~ ~ ~ container.5 with bucket
execute store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players add @s jmmf.count.9 1
