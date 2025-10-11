## Returning fail will stop this recipe from being checked and move on to the next one

# Return if ingredient layout does not match
#  - Function path can be changed to that of your ingredient check function
execute unless function jmmf:recipe/cooking_station/black_tea_leaves/ingredients run return fail

# Temporarily store what to craft, for checking against the current output
#   - First set the base item (minecraft:structure_block), then apply our item modifier (jmmf:black_tea_leaves) to get the final item
#   - Change the following:
#       - item in "item replace" to the recipe's base item
#       - item modifier in "item modify" to the recipe's item modifier
item replace entity @s weapon.mainhand with minecraft:structure_block 
item modify entity @s weapon.mainhand jmmf:black_tea_leaves

# Set how many items are made per craft of this recipe
scoreboard players set @s jmmf.craft_count 1

# Check if recipe can output, do not touch this line
execute if function jmmf:block/cooking_station/cooking/is_output_occupied run return fail

# Set recipe ID (change number to your recipe's ID number)
#  - Josh's More Foods recipe IDs take precedence, values 1-9999 are reserved
scoreboard players set @s jmmf.recipe_id 10