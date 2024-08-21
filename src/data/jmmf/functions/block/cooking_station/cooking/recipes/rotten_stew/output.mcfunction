function jmmf:block/cooking_station/cooking/input/deduct
#remove an additional 2 bowls
execute store result block ~ ~ ~ Items[{Slot:22b}].Count int 1 run scoreboard players remove @s jmmf.count.6 2

#set output if empty, otherwise change count
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:rotten_flesh{smithed:{id: "jmmf:rotten_stew", dict:{food:{}}}, display:{Name:'{"italic":false, "translate":"item.jmmf.rotten_stew"}', Lore:['{"italic":false, "translate":"item.jmmf.rotten_stew.lore", "color":"gray"}']}, CustomModelData: 481190}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 3
scoreboard players remove @s jmmf.water_level 1