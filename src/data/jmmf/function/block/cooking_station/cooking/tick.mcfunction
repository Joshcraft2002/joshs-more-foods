#read inventory but filter out UI slots
data modify storage jmmf:cooking_station temp.inventory set from block ~ ~ ~ Items
data remove storage jmmf:cooking_station temp.inventory[{Slot:3b}]
data remove storage jmmf:cooking_station temp.inventory[{Slot:12b}]
data remove storage jmmf:cooking_station temp.inventory[{Slot:21b}]

#If input changes, run recipe check
execute store success score @s jmmf.data run data modify entity @s equipment.head.components."minecraft:custom_data".jmmf.stored_station_data set from storage jmmf:cooking_station temp.inventory
execute if entity @s[scores={jmmf.data=1..}] if data block ~ ~ ~ Items run function jmmf:block/cooking_station/cooking/input/on_changed

#update cook data
execute unless score @s jmmf.cook_time matches 1.. run function jmmf:block/cooking_station/cooking/on_cooking_finished
execute if score @s jmmf.active matches 1 run scoreboard players remove @s jmmf.cook_time 1

execute if score @s jmmf.open matches 1 run scoreboard players set @s jmmf.update_ui 1
