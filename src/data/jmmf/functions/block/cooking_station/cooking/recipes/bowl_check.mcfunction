#say bowl check
#{output:{components:{"minecraft:custom_data":{joshmats:{id:"jmmf:boiled_egg"}}}}}

#rice bowl
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:"rice"}}}, count:2b}]}} run function jmmf:block/cooking_station/cooking/recipes/rice_bowl/check

#rotten stew
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rotten_flesh", count:2b}]}} unless data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{id:"jmmf:rotten_stew"}}}, count:2b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rotten_stew/check

#fried rice
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 4 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:"rice"}}}, count:2b}, {id:"minecraft:carrot", count:1b}, {id:"minecraft:potato", count:1b}, {id:"minecraft:egg", count:1b}]}} run function jmmf:block/cooking_station/cooking/recipes/fried_rice/check
#champorado
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:"rice"}}}, count:1b}, {id:"minecraft:cocoa_beans", count:1b}]}} run function jmmf:block/cooking_station/cooking/recipes/champorado/check
