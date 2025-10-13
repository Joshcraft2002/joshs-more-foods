function jmmf:block/cooking_station/cooking/input/deduct

scoreboard players remove @s jmmf.count.container 1
execute if score @s jmmf.count.container matches 1.. run execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s jmmf.count.container
execute unless score @s jmmf.count.container matches 1.. run data remove block ~ ~ ~ Items[{Slot:22b}]