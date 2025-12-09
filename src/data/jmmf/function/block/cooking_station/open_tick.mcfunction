# If there are any items in improper slots, manage them
execute if entity @s[predicate=jmmf:block/cooking_station/invalid_items] run function jmmf:block/cooking_station/manage_invalid_slots/move

# If cook mode and cookware do not match, update cookware
execute unless score @s jmmf.cook_mode matches 1.. unless entity @s[predicate=jmmf:block/cooking_station/cookware_empty] run function jmmf:block/cooking_station/update_cookware
execute if score @s jmmf.cook_mode matches 1 unless entity @s[predicate=jmmf:block/cooking_station/cookware_cooking_pot] run function jmmf:block/cooking_station/update_cookware
execute if score @s jmmf.cook_mode matches 2 unless entity @s[predicate=jmmf:block/cooking_station/cookware_frying_pan] run function jmmf:block/cooking_station/update_cookware
execute if score @s jmmf.cook_mode matches 3 unless entity @s[predicate=jmmf:block/cooking_station/cookware_tea_kettle] run function jmmf:block/cooking_station/update_cookware

# Update ui if told to
execute if score @s jmmf.update_ui matches 1 run function jmmf:block/cooking_station/update_ui

# Set open score to 0 if barrel closed
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s jmmf.open 0