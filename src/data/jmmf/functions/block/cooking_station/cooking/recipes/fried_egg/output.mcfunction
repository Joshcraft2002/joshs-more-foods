function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with cookie[custom_data={smithed:{id:"jmmf:fried_egg"}},custom_model_data=481007,item_name='{"italic":false,"translate":"item.jmmf.fried_egg"}', food={nutrition:3,saturation:2}]
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1