execute unless score @s jmmf.count matches 1 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"jmmf:cookbook", count:1}]}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 0
scoreboard players set jmmf:cooking_station jmmf.is_instant 1

item replace entity @s weapon.mainhand with minecraft:written_book
item modify entity @s weapon.mainhand jmmf:cookbook

return 1