## Returning fail will stop this recipe from being checked and move on to the next one

# Return if ingredient layout does not match
execute unless function jmmf:recipe/cooking_station/cooking_pot/bone_broth/ingredients run return fail

# Temporarily store what to craft, for checking against the current output
item replace entity @s weapon.mainhand with minecraft:beetroot_soup 
item modify entity @s weapon.mainhand jmmf:bone_broth

# Set how many items are made per craft of this recipe
scoreboard players set @s jmmf.craft_count 1

execute if function jmmf:block/cooking_station/cooking/is_output_occupied run return fail

scoreboard players set @s jmmf.recipe_id 191