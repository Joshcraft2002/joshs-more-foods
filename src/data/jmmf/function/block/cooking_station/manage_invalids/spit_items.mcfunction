data remove storage jmmf:cooking_station temp
data modify storage jmmf:cooking_station temp.Items set value []

# store items in valid slots
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 0b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 1b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 2b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 4b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 5b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 10b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 11b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 16b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 19b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 20b}]
data modify storage jmmf:cooking_station temp.Items append from block ~ ~ ~ Items[{Slot: 22b}]

# remove items in valid slots in block
data remove block ~ ~ ~ Items[{Slot: 0b}]
data remove block ~ ~ ~ Items[{Slot: 1b}]
data remove block ~ ~ ~ Items[{Slot: 2b}]
data remove block ~ ~ ~ Items[{Slot: 4b}]
data remove block ~ ~ ~ Items[{Slot: 5b}]
data remove block ~ ~ ~ Items[{Slot: 10b}]
data remove block ~ ~ ~ Items[{Slot: 11b}]
data remove block ~ ~ ~ Items[{Slot: 16b}]
data remove block ~ ~ ~ Items[{Slot: 19b}]
data remove block ~ ~ ~ Items[{Slot: 20b}]
data remove block ~ ~ ~ Items[{Slot: 22b}]

# clear our ui elements if they weren't removed
execute store success score jmmf:temp jmmf.data as @a[distance=..6] run clear @s structure_block[minecraft:custom_data~{joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]
execute if score jmmf:temp jmmf.data matches 0 run data remove block ~ ~ ~ Items[{Slot: 3b}]
execute store success score jmmf:temp1 jmmf.data as @a[distance=..6] run clear @s structure_block[minecraft:custom_data~{joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score jmmf:temp1 jmmf.data matches 0 run data remove block ~ ~ ~ Items[{Slot: 12b}]
execute store success score jmmf:temp2 jmmf.data as @a[distance=..6] run clear @s structure_block[minecraft:custom_data~{joshmats:{gui:{id:"jmmf:cooking_station_cookware_placeholder"}}}]
execute if score jmmf:temp2 jmmf.data matches 0 run data remove block ~ ~ ~ Items[{Slot: 21b}]

# clear out any items dropped from inventory ui
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{joshmats:{gui:{}}}}}}]

# store items to spit and how many there are
data modify storage jmmf:cooking_station temp.items_to_spit set from block ~ ~ ~ Items
execute store result score @s jmmf.data run data get block ~ ~ ~ Items

# spawns items on nearest player that opened the station gui
execute if score @s jmmf.data matches 1.. run function jmmf:block/cooking_station/manage_invalids/spawn_loop

# replace appropriate items
data modify block ~ ~ ~ Items set from storage jmmf:cooking_station temp.Items
scoreboard players set @s jmmf.update_ui 1
