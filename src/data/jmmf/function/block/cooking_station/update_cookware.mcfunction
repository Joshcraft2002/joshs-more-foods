# Determine cookware type and set cook_mode accordingly
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_empty] run scoreboard players set @s jmmf.cook_mode 0
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_pot] run scoreboard players set @s jmmf.cook_mode 1
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_pan] run scoreboard players set @s jmmf.cook_mode 2

# Update appearance based on cook mode
execute if score @s jmmf.cook_mode matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_empty"]}
execute if score @s jmmf.cook_mode matches 1 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_pot"]}
execute if score @s jmmf.cook_mode matches 2 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_pan"]}

# Update UI accordingly
#   - line also exists in update_ui, unsure if both should be moved to a dedicated function
execute if score @s jmmf.cook_mode matches 0 run item replace block ~ ~ ~ container.21 with structure_block[item_model="jmmf:gui/cooking_station/cookware_placeholder",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cookware_placeholder"}}}]
execute if score @s jmmf.cook_mode matches 1.. run item replace block ~ ~ ~ container.21 with structure_block[item_model="joshmats:empty",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cookware_placeholder"}}}]
