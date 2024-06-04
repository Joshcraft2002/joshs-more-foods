scoreboard players remove @s jmmf.cook_time 1

execute if score @s jmmf.cook_time matches 3 run item replace block ~ ~ ~ container.8 with minecraft:structure_block{jmmf:{gui:1b},display:{Name:'{"text": ""}'},CustomModelData:4810002}
execute if score @s jmmf.cook_time matches 2 run item replace block ~ ~ ~ container.8 with minecraft:structure_block{jmmf:{gui:1b},display:{Name:'{"text": ""}'},CustomModelData:4810003}
execute if score @s jmmf.cook_time matches 1 run item replace block ~ ~ ~ container.8 with minecraft:structure_block{jmmf:{gui:1b},display:{Name:'{"text": ""}'},CustomModelData:4810004}
execute if score @s jmmf.cook_time matches 0 run item replace block ~ ~ ~ container.8 with minecraft:structure_block{jmmf:{gui:1b},display:{Name:'{"text": ""}'},CustomModelData:4810005}