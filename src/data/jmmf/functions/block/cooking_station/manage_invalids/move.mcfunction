#move items into open input slots
scoreboard players set @s jmmf.data 0
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 1b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 1b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 2b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 2b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 4b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 4b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 10b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 10b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 11b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 11b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 16b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 16b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 19b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 19b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 20b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 20b
execute store result score @s jmmf.data if entity @s[scores={jmmf.data=0}] unless block ~ ~ ~ barrel{Items: [{Slot: 22b}]} run data modify block ~ ~ ~ Items[{Slot: 0b}].Slot set value 22b

# If things are still invalid, just throw them out instead
execute if entity @s[predicate=jmmf:block/cooking_station/invalid_items] run function jmmf:block/cooking_station/manage_invalids/spit_items
