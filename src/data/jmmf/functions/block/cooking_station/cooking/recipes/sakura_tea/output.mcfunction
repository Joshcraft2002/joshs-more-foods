function jmmf:block/cooking_station/cooking/input/deduct

#set output if empty, otherwise increment one
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with minecraft:cookie[custom_data={smithed:{id:"jmmf:sakura_tea"},joshmats:{tag:["tea"]}},custom_model_data=481366,item_name='{"italic":false,"translate":"item.jmmf.sakura_tea"}',food={nutrition:1,saturation:0.5,can_always_eat:true,effects:[{effect:{id:"minecraft:regeneration",duration:400}}]},max_stack_size=16]
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1
scoreboard players remove @s jmmf.water_level 1