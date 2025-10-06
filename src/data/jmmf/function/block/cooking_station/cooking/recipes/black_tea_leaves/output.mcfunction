# Deduct input items
function jmmf:block/cooking_station/cooking/input/deduct

# If output slot is empty, set the output to the base item then modify to the final item
execute if score @s jmmf.count.output matches 0 run item replace block ~ ~ ~ container.16 with structure_block
execute if score @s jmmf.count.output matches 0 run item modify block ~ ~ ~ container.16 jmmf:black_tea_leaves

# Increment output slot count by 1
#   - If the slot was empty, it is now 1 (from 0)
execute store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run scoreboard players add @s jmmf.count.output 1