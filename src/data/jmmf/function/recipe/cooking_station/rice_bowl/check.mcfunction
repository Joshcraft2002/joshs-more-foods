## Returning fail will stop this recipe from being checked and move on to the next one

# Return if ingredient layout does not match
#  - Function path can be changed to that of your ingredient check function
execute unless function jmmf:recipe/cooking_station/rice_bowl/ingredients run return fail

# Temporarily store what to craft, for checking against the current output
#   - First set the base item (minecraft:structure_block), then apply our item modifier (jmmf:black_tea_leaves) to get the final item
#   - Change the following:
#       - item in "item replace" to the recipe's base item
#       - item modifier in "item modify" to the recipe's item modifier
item replace entity @s weapon.mainhand with minecraft:structure_block 
item modify entity @s weapon.mainhand jmmf:black_tea_leaves

# Set how many items are made per individual craft of this recipe
scoreboard players set @s jmmf.craft_count 1

# Check if recipe can output, do not touch this line
execute if function jmmf:block/cooking_station/cooking/is_output_occupied run return fail

# Deduct input items in bulk, including container
function jmmf:block/cooking_station/cooking/input/deduct_bulk_container

# If output slot is empty, set the output to the base item then modify to the final item
execute if score @s jmmf.count.output matches 0 run item replace block ~ ~ ~ container.16 with minecraft:beetroot_soup
execute if score @s jmmf.count.output matches 0 run item modify block ~ ~ ~ container.16 jmmf:rice_bowl

# Increment by how many times this recipe crafts
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players operation @s jmmf.count.output += @s jmmf.count
