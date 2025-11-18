function jmmf:block/cooking_station/cooking/input/deduct

# Safety check for quantity handled in process_recipe
scoreboard players operation @s jmmf.count.6 -= @s jmmf.craft_count
execute if score @s jmmf.count.6 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s jmmf.count.6
execute unless score @s jmmf.count.6 matches 1.. run data remove block ~ ~ ~ Items[{Slot:22b}]