function jmmf:block/cooking_station/cooking/input/deduct_bulk

#set output if empty, otherwise add in bulk
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:beetroot_soup[custom_data={smithed:{id:"jmmf:rice_bowl"},joshmats:{tag:["rice_bowl"]}},custom_model_data=481002,item_name='{"italic":false,"translate":"item.jmmf.rice_bowl"}', food={nutrition:5,saturation:6},max_stack_size=16]
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players operation @s jmmf.count.7 += @s jmmf.count