function jmmf:block/cooking_station/cooking/input/deduct_bulk

#set output if empty, otherwise add in bulk
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie{smithed:{id: "jmmf:rice_bowl", dict:{food:{}}, ignore: {functionality: 1b, crafting:1b}}, display:{Name:'{"italic":false, "translate": "item.jmmf.rice_bowl"}'}, CustomModelData: 481002}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players operation @s jmmf.count.7 += @s jmmf.count