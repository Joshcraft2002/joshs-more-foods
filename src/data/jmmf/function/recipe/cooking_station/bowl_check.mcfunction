## Egg Recipes Note: Manual checking for each egg type for now, but will update to tag system later

# rice bowl
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:rice"}}}, count:2}]}} run function jmmf:block/cooking_station/cooking/recipes/rice_bowl

# red rice bowl
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:red_rice"}}}, count:2}]}} run function jmmf:block/cooking_station/cooking/recipes/red_rice_bowl

# rotten stew
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:rotten_flesh", count:2}]}} unless data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{smithed:{id:"jmmf:rotten_stew"}}}, count:2}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rotten_stew/check

# bone broth
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:bone", count:1}, {id:"minecraft:carrot", count:1}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/bone_broth/check

# fried rice
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 4 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["rice"]}}}, count:2}, {id:"minecraft:carrot", count:1}, {id:"minecraft:potato", count:1}, {id:"minecraft:egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/fried_rice/check
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 4 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["rice"]}}}, count:2}, {id:"minecraft:carrot", count:1}, {id:"minecraft:potato", count:1}, {id:"minecraft:blue_egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/fried_rice/check
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 4 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["rice"]}}}, count:2}, {id:"minecraft:carrot", count:1}, {id:"minecraft:potato", count:1}, {id:"minecraft:brown_egg", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/fried_rice/check

# champorado
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 2 if data storage jmmf:cooking_station {input:{ingredients:[{components:{"minecraft:custom_data":{joshmats:{tag:["rice"]}}}, count:1}, {id:"minecraft:cocoa_beans", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/champorado/check
