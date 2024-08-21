function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie{smithed:{id: "jmmf:fried_egg", dict:{food:{fried_egg: 1b}}, ignore: {functionality: 1b, crafting:1b}}, display:{Name:'{"italic":false,"translate":"item.jmmf.fried_egg"}'}, CustomModelData: 481007}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1