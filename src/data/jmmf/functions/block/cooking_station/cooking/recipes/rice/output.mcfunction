function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:wheat[custom_data={joshmats:{id:"jmmf:rice",tag:"rice"}},custom_model_data=481001,item_name='{"italic":false,"translate":"item.jmmf.rice"}']
execute store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players add @s jmmf.count.7 1
scoreboard players remove @s jmmf.water_level 1