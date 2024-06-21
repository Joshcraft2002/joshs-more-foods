execute store result score @s jmmf.count.8 run data get storage jmmf:cooking_station Items[{Slot: 4b}].count
execute store result score @s jmmf.count.9 run data get block ~ ~ ~ Items[{Slot:5b}].count

#flag if too much bucket output
execute if score @s jmmf.count.9 matches 16.. run scoreboard players set jmmf:temp1 jmmf.data 2

execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station {liquid:{output:{id:"minecraft:bucket"}}}
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data unless data storage jmmf:cooking_station {liquid:{output:{}}}

execute if score jmmf:temp1 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/recipes/empty_water/empty
