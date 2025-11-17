execute unless score @s jmmf.count matches 1 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{tag:["rice"], count:2}, {id:"minecraft:carrot", count:1}, {id:"minecraft:potato", count:1}, {id:"minecraft:egg", count:1}], container:{id:"minecraft:bowl"}}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 1
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:beetroot_soup
item modify entity @s weapon.mainhand jmmf:fried_rice

return 1