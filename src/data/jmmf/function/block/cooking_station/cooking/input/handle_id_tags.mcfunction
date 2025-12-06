# For each storage item slot, copy to mainhand to read tag data, then append

data remove entity @s equipment.mainhand

# Ingredients
data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 1b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 1b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 1b}].tag append from storage jmmf:cooking_station Items[{Slot: 1b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 1b}].id set from storage jmmf:cooking_station Items[{Slot: 1b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 2b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 2b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 2b}].tag append from storage jmmf:cooking_station Items[{Slot: 2b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 2b}].id set from storage jmmf:cooking_station Items[{Slot: 2b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 10b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 10b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 10b}].tag append from storage jmmf:cooking_station Items[{Slot: 10b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 10b}].id set from storage jmmf:cooking_station Items[{Slot: 10b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 11b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 11b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 11b}].tag append from storage jmmf:cooking_station Items[{Slot: 11b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 11b}].id set from storage jmmf:cooking_station Items[{Slot: 11b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 19b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 19b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 19b}].tag append from storage jmmf:cooking_station Items[{Slot: 19b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 19b}].id set from storage jmmf:cooking_station Items[{Slot: 19b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 20b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 20b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 20b}].tag append from storage jmmf:cooking_station Items[{Slot: 20b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 20b}].id set from storage jmmf:cooking_station Items[{Slot: 20b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

# Container
data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 22b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 22b}].tag set from storage jmmf:cooking_station temp.item_tag
data modify storage jmmf:cooking_station Items[{Slot: 22b}].tag append from storage jmmf:cooking_station Items[{Slot: 22b}].components."minecraft:custom_data".smithed.item_tag[]
data modify storage jmmf:cooking_station Items[{Slot: 22b}].id set from storage jmmf:cooking_station Items[{Slot: 22b}].components."minecraft:custom_data".smithed.id
data remove entity @s equipment.mainhand

# Output not needed, it has its own mechanism for checks
