data modify storage joshmats:custom_block currentBlock.id set from block ~ ~ ~ Items[0].components.minecraft:custom_data.joshmats.block.id

#data modify storage smithed.custom_block:main blockApi.__data set from block ~ ~ ~
function #joshmats:on_custom_block_placed

#execute if block ~ ~ ~ #smithed.custom_block:placeable run function smithed.custom_block:v0.2.0/place/block_unchanged
