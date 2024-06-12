#temp.1 holds last read input

#store data of current ingredient being checked
data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station input.ingredients[0]
data remove storage jmmf:cooking_station temp.2.count
data remove storage jmmf:cooking_station temp.2.Slot

#check if last read input is the same as current ingredient
execute store success score jmmf:temp2 jmmf.data run data modify storage jmmf:cooking_station temp.2 set from storage jmmf:cooking_station temp.1
#increment current ingredient count (multiply current count by negative number with tiny offset seems to increment by 1)
execute if score jmmf:temp2 jmmf.data matches 0 store result storage jmmf:cooking_station input.ingredients[0].count byte -1 run data get storage jmmf:cooking_station input.ingredients[0].count -1.000001

