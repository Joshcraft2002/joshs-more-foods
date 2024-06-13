function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise change count
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with cookie[custom_data={smithed:{id:"jmmf:fried_rice"}},custom_model_data=481300,item_name='{"italic":false,"translate":"item.jmmf.fried_rice"}']
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1