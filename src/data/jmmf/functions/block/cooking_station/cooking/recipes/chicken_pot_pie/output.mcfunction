function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise change count
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:pumpkin_pie{smithed:{id: "jmmf:chicken_pot_pie", dict:{food:{pie:1b}}, ignore: {functionality: 1b, crafting:1b}}, display:{Name:'{"italic":false, "translate": "item.jmmf.chicken_pot_pie"}'}, CustomModelData: 481133}
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1