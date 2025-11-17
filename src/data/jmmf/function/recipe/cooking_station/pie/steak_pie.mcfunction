execute unless score @s jmmf.count matches 1 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:beef", count:1}], container:{id:"jmmf:pie_crust"}}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 2
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 1
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:pumpkin_pie 
item modify entity @s weapon.mainhand jmmf:pie/steak_pie

return 1