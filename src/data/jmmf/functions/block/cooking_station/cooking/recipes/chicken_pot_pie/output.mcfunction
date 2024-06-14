function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise change count
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with pumpkin_pie[custom_data={smithed:{id:"jmmf:chicken_pot_pie"}},custom_model_data=481133,item_name='{"italic":false,"translate":"item.jmmf.chicken_pot_pie"}', food={nutrition:10,saturation:11}]
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1