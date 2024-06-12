scoreboard players remove @s jmmf.data 1
execute as @p[gamemode=!spectator] at @s run summon item ~ ~ ~ {Item: {id: "stone", Count: 1b}, Tags: ["jmmf.replace_item", "global.ignore"]}
data modify entity @e[type=item, limit=1, tag=jmmf.replace_item] Item set from storage jmmf:cooking_station temp.items_to_spit[0]
data remove storage jmmf:cooking_station temp.items_to_spit[0]
tag @e[type=item, limit=1, tag=jmmf.replace_item] remove jmmf.replace_item
execute if entity @s[scores={jmmf.data=1..}] run function jmmf:block/cooking_station/cooking/spawn_loop
