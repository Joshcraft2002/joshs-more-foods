# Deduct input items
function jmmf:block/cooking_station/cooking/input/deduct

# If output slot is empty, set the output to the base item then modify to the final item
execute if score @s jmmf.count.7 matches 0 run item replace block ~ ~ ~ container.16 with cookie
execute if score @s jmmf.count.7 matches 0 run item modify block ~ ~ ~ container.16 jmmf:boiled_egg

# Increment output slot count by 1
#   - If the slot was empty, it is now 1 (from 0)
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.7 1

# Deduct 1 water level for this recipe
scoreboard players remove @s jmmf.water_level 1