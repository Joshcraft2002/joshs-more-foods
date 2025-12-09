execute unless score @s jmmf.count matches 3 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:chicken", count:1}, {id:"minecraft:carrot", count:1}, {id:"minecraft:brown_mushroom", count:1}], container:{id:"jmmf:pie_crust"}}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 1
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:pumpkin_pie 
item modify entity @s weapon.mainhand jmmf:item/chicken_pot_pie

return 1