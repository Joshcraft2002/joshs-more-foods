function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie{jmmf:{tea:1b}, smithed:{id: "jmmf:sakura_tea", dict:{food:{tea: 1b}}, ignore: {functionality: 1b, crafting:1b}}, display:{Name:'{"italic":false,"translate":"item.jmmf.sakura_tea"}'}, CustomModelData: 481366}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1
scoreboard players remove @s jmmf.water_level 1