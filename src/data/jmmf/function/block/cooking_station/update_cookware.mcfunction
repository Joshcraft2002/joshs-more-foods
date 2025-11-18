say updating cookware

# Determine cookware type and set cook_mode accordingly
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_empty] run scoreboard players set @s jmmf.cook_mode 0
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_cooking_pot] run scoreboard players set @s jmmf.cook_mode 1
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_frying_pan] run scoreboard players set @s jmmf.cook_mode 2
execute if entity @s[predicate=jmmf:block/cooking_station/cookware_tea_kettle] run scoreboard players set @s jmmf.cook_mode 3

# Update appearance based on cook mode
execute if score @s jmmf.cook_mode matches 0 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_empty"]}
execute if score @s jmmf.cook_mode matches 1 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_cooking_pot"]}
execute if score @s jmmf.cook_mode matches 2 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_frying_pan"]}
execute if score @s jmmf.cook_mode matches 3 run data modify entity @s equipment.head.components."minecraft:custom_model_data" set value {strings:["jmmf:cookware_tea_kettle"]}

# Clear water level if no cookware
execute if score @s jmmf.cook_mode matches 0 run scoreboard players set @s jmmf.water_level 0

# Trigger UI update
execute if score @s jmmf.open matches 1 run scoreboard players set @s jmmf.update_ui 1


