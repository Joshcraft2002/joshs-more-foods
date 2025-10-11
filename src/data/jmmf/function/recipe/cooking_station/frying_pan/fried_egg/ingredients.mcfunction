## Return true if the input layout matches this recipe

# jmmf.count here is the number of different ingredient types
# - change its number (after "matches") to the number of different ingredient types in this recipe
#       (for example, a recipe that takes 2 apples and 1 sugar has 2 different ingredient types: apple and sugar)

# Inside ingredients[] list, each ingredient object can be defined through data components:
# - count is how many of that ingredient is needed
#     (in the previous example, apple would have count 2 and sugar would have count 1)
# - if an item has a custom id or tag (custom data value in smithed.id or smithed.tag), it can be used as the id or tag respectively
#     
#     For example, an orange actually based on an apple with custom data:
#       {components:{"minecraft:custom_data":{smithed:{id:"jmmf:orange"}}}, count:2}
#     could be used in a recipe as:
#       {id:"jmmf:orange", count:2}
#     
#     or in another example, any fruit still based on an apple with a custom tag:
#       {components:{"minecraft:custom_data":{smithed:{tag:["fruit"]}}}, count:1}
#     could be used in a recipe as:
#       {tag:["fruit"], count:2}
#
#     However both are valid, as components can still be used to differentiate items

return run execute if score @s jmmf.count matches 1 if data storage jmmf:cooking_station {input:{ingredients:[{tag:["minecraft:eggs"], count:1}]}}
