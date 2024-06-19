data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station input.ingredients[5]
data remove storage jmmf:cooking_station temp.2.count
data remove storage jmmf:cooking_station temp.2.Slot

execute store success score jmmf:temp2 jmmf.data run data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station temp.1

execute if score jmmf:temp2 jmmf.data matches 0 store result score jmmf:temp_count jmmf.data run data get storage jmmf:cooking_station input.ingredients[5].count
execute if score jmmf:temp2 jmmf.data matches 0 run scoreboard players add jmmf:temp_count jmmf.data 1
execute if score jmmf:temp2 jmmf.data matches 0 store result storage jmmf:cooking_station input.ingredients[5].count int 1 run scoreboard players get jmmf:temp_count jmmf.data

