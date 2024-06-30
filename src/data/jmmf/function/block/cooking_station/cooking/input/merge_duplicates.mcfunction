#store data of last input read, then remove it from that list
data modify storage jmmf:cooking_station temp.1 set from storage jmmf:cooking_station temp.input[-1]
data remove storage jmmf:cooking_station temp.1.Slot
data remove storage jmmf:cooking_station temp.1.count
data remove storage jmmf:cooking_station temp.input[-1]

#get the number of ingredients (as temp1)
execute store result score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station input.ingredients[]
#flag for no duplicates found (0 means similar item found)
scoreboard players set jmmf:temp2 jmmf.data 1

#check on each ingredient in the list, if duplicate found then go back to start with new input
execute if score jmmf:temp1 jmmf.data matches 1.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/0
execute if score jmmf:temp1 jmmf.data matches 2.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/1
execute if score jmmf:temp1 jmmf.data matches 3.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/2
execute if score jmmf:temp1 jmmf.data matches 4.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/3
execute if score jmmf:temp1 jmmf.data matches 5.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/4
execute if score jmmf:temp1 jmmf.data matches 6.. if score jmmf:temp2 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/input/checks/5

#if no duplicate found and last input not empty, just add it to ingredients list with count of 1
execute if score jmmf:temp2 jmmf.data matches 1 unless data storage jmmf:cooking_station temp.1{id: "minecraft:air"} run function jmmf:block/cooking_station/cooking/input/append

execute if data storage jmmf:cooking_station temp.input[] run function jmmf:block/cooking_station/cooking/input/merge_duplicates