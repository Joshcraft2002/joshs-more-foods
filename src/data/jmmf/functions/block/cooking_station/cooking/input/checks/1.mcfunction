data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station input.ingredients[1]
data remove storage jmmf:cooking_station temp.2.Count
data remove storage jmmf:cooking_station temp.2.Slot

execute store success score jmmf:temp2 jmmf.data run data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station temp.1
execute if score jmmf:temp2 jmmf.data matches 0 store result storage jmmf:cooking_station input.ingredients[1].Count byte -1 run data get storage jmmf:cooking_station input.ingredients[1].Count -1.000001

