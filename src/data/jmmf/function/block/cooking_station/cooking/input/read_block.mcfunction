data remove storage jmmf:cooking_station input
data remove storage jmmf:cooking_station liquid
data remove storage jmmf:cooking_station output

# For each item slot, copy the item and handle tags
data modify storage jmmf:cooking_station Items set from entity @s equipment.head.components."minecraft:custom_data".jmmf.stored_station_data
function jmmf:block/cooking_station/cooking/input/handle_tags

# Combine all input items into one temp list
execute if data storage jmmf:cooking_station Items[{Slot: 1b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 1b}]
execute if data storage jmmf:cooking_station Items[{Slot: 2b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 2b}]
execute if data storage jmmf:cooking_station Items[{Slot: 10b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 10b}]
execute if data storage jmmf:cooking_station Items[{Slot: 11b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 11b}]
execute if data storage jmmf:cooking_station Items[{Slot: 19b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 19b}]
execute if data storage jmmf:cooking_station Items[{Slot: 20b}] run data modify storage jmmf:cooking_station temp.input append from storage jmmf:cooking_station Items[{Slot: 20b}]

# Process inputs and get number of types of ingredients
function jmmf:block/cooking_station/cooking/input/merge_duplicates
data remove storage jmmf:cooking_station temp
execute store result score @s jmmf.count if data storage jmmf:cooking_station input.ingredients[]

# Other input & output slots
execute if data storage jmmf:cooking_station Items[{Slot: 4b}] run data modify storage jmmf:cooking_station liquid.input set from storage jmmf:cooking_station Items[{Slot: 4b}]
execute if data storage jmmf:cooking_station Items[{Slot: 5b}] run data modify storage jmmf:cooking_station liquid.output set from storage jmmf:cooking_station Items[{Slot: 5b}]
execute if data storage jmmf:cooking_station Items[{Slot: 22b}] run data modify storage jmmf:cooking_station input.container set from storage jmmf:cooking_station Items[{Slot: 22b}]
execute if data storage jmmf:cooking_station Items[{Slot: 16b}] run data modify storage jmmf:cooking_station output set from storage jmmf:cooking_station Items[{Slot: 16b}]

# Get item count of each (relevant) slot
execute store result score @s jmmf.count.0 run data get storage jmmf:cooking_station Items[{Slot: 1b}].count
execute store result score @s jmmf.count.1 run data get storage jmmf:cooking_station Items[{Slot: 2b}].count
execute store result score @s jmmf.count.2 run data get storage jmmf:cooking_station Items[{Slot: 10b}].count
execute store result score @s jmmf.count.3 run data get storage jmmf:cooking_station Items[{Slot: 11b}].count
execute store result score @s jmmf.count.4 run data get storage jmmf:cooking_station Items[{Slot: 19b}].count
execute store result score @s jmmf.count.5 run data get storage jmmf:cooking_station Items[{Slot: 20b}].count
execute store result score @s jmmf.count.container run data get storage jmmf:cooking_station input.container.count