execute if score @s jmmf.count.7 matches 16.. run return 1

execute store success score jmmf:recipe_validation jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:red_rice_bowl"}}}}}
execute if score jmmf:recipe_validation jmmf.data matches 0 if data storage jmmf:cooking_station {output:{}} run return 1

scoreboard players set @s jmmf.max_stack_size 16
function jmmf:block/cooking_station/cooking/input/deduct_bulk_container

#set output if empty, otherwise add in bulk
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:beetroot_soup
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:red_rice_bowl
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players operation @s jmmf.count.7 += @s jmmf.count
