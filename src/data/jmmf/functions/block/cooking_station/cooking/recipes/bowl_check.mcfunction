#rice bowl
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{tag:{smithed:{dict:{rice: 1b}}}, Count:2b}]}} run function jmmf:block/cooking_station/cooking/recipes/rice_bowl/check

#rotten stew
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rotten_flesh", Count:2b}]}} unless data storage jmmf:cooking_station {input:{ingredients:[{tag:{smithed:{id:'jmmf:rotten_stew'}}}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rotten_stew/check

#fried rice
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 4 if data storage jmmf:cooking_station {input:{ingredients:[{tag:{smithed:{dict:{rice: 1b}}}, Count:2b}, {id:"minecraft:carrot"}, {id:"minecraft:potato"}, {id:"minecraft:egg"}]}} run function jmmf:block/cooking_station/cooking/recipes/fried_rice/check
#champorado
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{tag:{smithed:{dict:{rice: 1b}}}, Count:1b}, {id:"minecraft:cocoa_beans"}]}} run function jmmf:block/cooking_station/cooking/recipes/champorado/check
