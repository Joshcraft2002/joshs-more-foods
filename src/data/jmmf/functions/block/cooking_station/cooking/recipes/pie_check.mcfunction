# chicken pot pie
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 3 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:chicken", count:1}, {id:"minecraft:carrot", count:1}, {id:"minecraft:brown_mushroom", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/pie/chicken_pot_pie/check

# pork pie
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:porkchop", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/pie/pork_pie/check

# steak pie
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:beef", count:1}]}} run function jmmf:block/cooking_station/cooking/recipes/pie/steak_pie/check
