data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station input.ingredients[4]
data remove storage jmmf:cooking_station temp.2.count
data remove storage jmmf:cooking_station temp.2.Slot

execute store success score jmmf:temp2 jmmf.data run data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station temp.1
execute if score jmmf:temp2 jmmf.data matches 0 store result storage jmmf:cooking_station input.ingredients[4].count byte -1 run data get storage jmmf:cooking_station input.ingredients[4].count -1.000001

