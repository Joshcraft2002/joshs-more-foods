#output must not be full
execute if score @s jmmf.count.7 matches 16.. run scoreboard players set jmmf:temp1 jmmf.data 2

#check if output either empty or the item we're making anyway
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{smithed:{id:"jmmf:cookbook"}}}}}
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data unless data storage jmmf:cooking_station {output:{}}

execute if score jmmf:temp1 jmmf.data matches 1 run scoreboard players set @s jmmf.recipeid 1001