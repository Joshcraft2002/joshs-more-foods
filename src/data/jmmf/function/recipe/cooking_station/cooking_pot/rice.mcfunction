say check rice
execute unless score @s jmmf.count matches 1 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:wheat_seeds", count:6}]}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 0
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:wheat 
item modify entity @s weapon.mainhand jmmf:item/rice

return 1