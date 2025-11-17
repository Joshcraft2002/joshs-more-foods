execute unless score @s jmmf.count matches 2 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{tag:["minecraft:eggs"], count:1}, {tag:["jmmf:soup_bases"], count:1}]}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 0
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:beetroot_soup 
item modify entity @s weapon.mainhand jmmf:bone_broth

return 1