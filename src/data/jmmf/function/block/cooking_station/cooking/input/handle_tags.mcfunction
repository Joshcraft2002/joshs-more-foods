# scoreboard players set $temp smithed.data 0

# For each storage item slot, copy to mainhand to read tag data, then append

data remove entity @s equipment.mainhand
data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 1b}]
function jmmf:block/cooking_station/cooking/input/query_tags
data modify storage jmmf:cooking_station Items[{Slot: 1b}].tag set from storage jmmf:cooking_station temp.item_tag

# data remove entity @s equipment.mainhand
# data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 3b}]
# function smithed.crafter:v0.7.0/block/table/crafting/input/query_tags
# data modify storage smithed.crafter:main root.temp.crafting_input_temp[0][1].item_tag set from storage smithed.crafter:main root.temp.item_tag

# data remove entity @s equipment.mainhand
# data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 4b}]
# function smithed.crafter:v0.7.0/block/table/crafting/input/query_tags
# data modify storage smithed.crafter:main root.temp.crafting_input_temp[0][2].item_tag set from storage smithed.crafter:main root.temp.item_tag

# data remove entity @s equipment.mainhand
# data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 11b}]
# function smithed.crafter:v0.7.0/block/table/crafting/input/query_tags
# data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][0].item_tag set from storage smithed.crafter:main root.temp.item_tag

# data remove entity @s equipment.mainhand
# data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 12b}]
# function smithed.crafter:v0.7.0/block/table/crafting/input/query_tags
# data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][1].item_tag set from storage smithed.crafter:main root.temp.item_tag

# data remove entity @s equipment.mainhand
# data modify entity @s equipment.mainhand set from block ~ ~ ~ Items[{Slot: 13b}]
# function smithed.crafter:v0.7.0/block/table/crafting/input/query_tags
# data modify storage smithed.crafter:main root.temp.crafting_input_temp[1][2].item_tag set from storage smithed.crafter:main root.temp.item_tag

data remove entity @s equipment.mainhand
