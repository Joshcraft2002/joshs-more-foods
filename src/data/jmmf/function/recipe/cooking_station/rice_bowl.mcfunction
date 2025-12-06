## Recipe Checking - Bulk with container, instant
# - Returning fail will stop this recipe from being checked and move on to the next one
# - These comments are for guidance and can be removed

## Ingredients Check

# jmmf.count here is the number of different ingredient types
# - change its number (after "matches") to the number of different ingredient types in this recipe
#     (for example, a recipe that takes 2 apples and 1 sugar has 2 different ingredient types: apple and sugar)
execute unless score @s jmmf.count matches 1 run return fail

# Inside ingredients[] list, each ingredient object can be defined through data components, with extra details:
# - count is how many of that ingredient is needed
#     (in the previous example, apple would have count 2 and sugar would have count 1)
# - if an item has a custom id or tag (custom data value in smithed.id or smithed.tag), it can be used as the id or tag respectively
#     
#     For example, an orange actually based on a minecraft:apple with custom data:
#       {components:{"minecraft:custom_data":{smithed:{id:"jmmf:orange"}}}, count:2}
#     could be used in a recipe as:
#       {id:"jmmf:orange", count:2}
#
#     or in another example, any fruit still based on a minecraft:apple with a custom tag:
#       {components:{"minecraft:custom_data":{smithed:{tag:["fruit"]}}}, count:1}
#     could be used in a recipe as:
#       {tag:["fruit"], count:2}
#
#     However both are valid, as components can still be used to differentiate items
execute unless data storage jmmf:cooking_station {input:{ingredients:[{id:"jmmf:rice", count:2}], container:{id:"minecraft:bowl"}}} run return fail

## Recipe Parameters

# How many items are made per single craft of this recipe
scoreboard players set jmmf:cooking_station jmmf.craft_count 1

# Whether this recipe crafts as many of the output as possible in one go (1 for yes, 0 for no)
scoreboard players set jmmf:cooking_station jmmf.is_bulk 1

# Whether this recipe needs a container (e.g. a minecraft:bowl) to hold the output (1 for yes, 0 for no)
scoreboard players set jmmf:cooking_station jmmf.needs_container 1

# Whether this recipe is crafted instantly (1 for yes, 0 for no)
scoreboard players set jmmf:cooking_station jmmf.is_instant 1

# Temporarily store what to craft, for checking against the current output
#   - First set the base item (minecraft:structure_block), then apply our item modifier (jmmf:black_tea_leaves) to get the final item
#   - Change the following:
#       - item in "item replace" to the recipe's base item
#       - item modifier in "item modify" to the recipe's item modifier (optional, can be removed if output is a vanilla item)
item replace entity @s weapon.mainhand with minecraft:beetroot_soup 
item modify entity @s weapon.mainhand jmmf:item/rice_bowl

# Other checks are handled internally, do not touch this line
return 1