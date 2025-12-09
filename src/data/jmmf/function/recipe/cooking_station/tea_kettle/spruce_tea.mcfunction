execute unless score @s jmmf.count matches 2 run return fail

execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:spruce_leaves", count:4}, {id:"jmmf:tea_leaves", count:2}], container:{id:"jmmf:teacup"}}} run return fail

scoreboard players set jmmf:cooking_station jmmf.craft_count 1
scoreboard players set jmmf:cooking_station jmmf.is_bulk 0
scoreboard players set jmmf:cooking_station jmmf.needs_container 1
scoreboard players set jmmf:cooking_station jmmf.is_instant 0

item replace entity @s weapon.mainhand with minecraft:cookie 
item modify entity @s weapon.mainhand jmmf:item/spruce_tea

return 1