#if there are any items in improper slots, manage them
execute if entity @s[predicate=jmmf:block/cooking_station/invalid_items] run function jmmf:block/cooking_station/manage_invalids/move

#update ui if told to
execute if score @s jmmf.update_ui matches 1 run function jmmf:block/cooking_station/update_ui

#set open score to 0 if barrel closed
execute if block ~ ~ ~ barrel[open=false] run scoreboard players set @s jmmf.open 0