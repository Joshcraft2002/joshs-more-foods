#reset flags(?)
scoreboard players set @s jmmf.active 1
#flag for if read inputs/output are valid
scoreboard players set @s jmmf.data 0
scoreboard players set @s jmmf.recipeid 0

#check if output slot is full, if not then read input
execute store result score @s jmmf.count.7 run data get block ~ ~ ~ Items[{Slot:16b}].count
execute if score @s jmmf.count.7 matches 64.. run scoreboard players set @s jmmf.data 1
execute unless score @s jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/read_block

#fill water
execute if data storage jmmf:cooking_station {input:{liquid:{id:"minecraft:water_bucket"}}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fill
#empty water
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:bucket"}]}} run function jmmf:block/cooking_station/cooking/recipes/empty_liquid/check

#rice
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:wheat_seeds", count:6b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/rice/check
#boiled egg
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:egg", count:1b}]}} if score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/boiled_egg/check
#fried egg
#execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:egg", count:1b}]}} unless score @s jmmf.water_level matches 1.. run function jmmf:block/cooking_station/cooking/recipes/fried_egg/check

#bowl recipes
execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{id:"minecraft:bowl"}}} run function jmmf:block/cooking_station/cooking/recipes/bowl_check

#chicken pot pie
execute unless score @s jmmf.data matches 1 store success score @s jmmf.data if score @s jmmf.count matches 3 if data storage jmmf:cooking_station {input:{ingredients:[{id:"minecraft:chicken"}, {id:"minecraft:carrot"}, {id:"minecraft:brown_mushroom"}], container:{tag:{smithed:{id:'jmmf:pie_crust'}}}}} run function jmmf:block/cooking_station/cooking/recipes/chicken_pot_pie/check

#tea recipes
execute unless score @s jmmf.data matches 1 if data storage jmmf:cooking_station {input:{container:{tag:{smithed:{id:'jmmf:teacup'}}}}} run function jmmf:block/cooking_station/cooking/recipes/teacup_check

#nothing, does reset gui
execute if score @s jmmf.recipeid matches 0 run function jmmf:block/cooking_station/cooking/reset