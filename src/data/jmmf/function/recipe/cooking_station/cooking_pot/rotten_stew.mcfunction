execute unless score @s jmmf.count matches 1 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rotten_flesh", count:2}], container:{id:"minecraft:bowl"}}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 3
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 1
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:rotten_flesh 
item modify entity @s weapon.mainhand jmmf:rotten_stew

return 1