data remove storage jmmf:cooking_station input
data remove storage jmmf:cooking_station output
data modify storage jmmf:cooking_station Items set from entity @s ArmorItems[3].tag.jmmf.stored_station_data

#main input
execute if data storage jmmf:cooking_station Items[{Slot: 1b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 1b}]
execute if data storage jmmf:cooking_station Items[{Slot: 2b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 2b}]
execute if data storage jmmf:cooking_station Items[{Slot: 10b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 10b}]
execute if data storage jmmf:cooking_station Items[{Slot: 11b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 11b}]
execute if data storage jmmf:cooking_station Items[{Slot: 19b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 19b}]
execute if data storage jmmf:cooking_station Items[{Slot: 20b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 20b}]
function jmmf:block/cooking_station/cooking/input/merge_duplicates
data remove storage jmmf:cooking_station temp
execute store result score @s jmmf.count if data storage jmmf:cooking_station input.ingredients[]

#other slots
execute if data storage jmmf:cooking_station Items[{Slot: 4b}] run data modify storage jmmf:cooking_station input.liquid set from storage jmmf:cooking_station Items[{Slot: 4b}]
execute if data storage jmmf:cooking_station Items[{Slot: 22b}] run data modify storage jmmf:cooking_station input.container set from storage jmmf:cooking_station Items[{Slot: 22b}]
execute if data storage jmmf:cooking_station Items[{Slot: 16b}] run data modify storage jmmf:cooking_station output set from storage jmmf:cooking_station Items[{Slot: 16b}]

#get count of each (relevant) slot
execute store result score @s jmmf.count.0 run data get storage jmmf:cooking_station Items[{Slot: 1b}].Count
execute store result score @s jmmf.count.1 run data get storage jmmf:cooking_station Items[{Slot: 2b}].Count
execute store result score @s jmmf.count.2 run data get storage jmmf:cooking_station Items[{Slot: 10b}].Count
execute store result score @s jmmf.count.3 run data get storage jmmf:cooking_station Items[{Slot: 11b}].Count
execute store result score @s jmmf.count.4 run data get storage jmmf:cooking_station Items[{Slot: 19b}].Count
execute store result score @s jmmf.count.5 run data get storage jmmf:cooking_station Items[{Slot: 20b}].Count
execute store result score @s jmmf.count.6 run data get storage jmmf:cooking_station input.container.Count