function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie{smithed:{id: "jmmf:boiled_egg", dict:{food:{boiled_egg: 1b}}, ignore: {functionality: 1b, crafting:1b}}, display:{Name:'{"italic":false,"translate":"item.jmmf.boiled_egg"}'}, CustomModelData: 481006}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1
scoreboard players remove @s jmmf.water_level 1