execute unless score @s jmmf.count matches 2 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:wheat_seeds", count:3},{id:"minecraft:beetroot_seeds", count:3}]}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 0
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:wheat 
item modify entity @s weapon.mainhand jmmf:red_rice

return 1