execute unless block ~ ~ ~ barrel run function jmmf:block/cooking_station/break

execute unless score @s jmmf.open matches 1 if block ~ ~ ~ barrel[open=true] run function jmmf:block/cooking_station/open_setup
execute if score @s jmmf.open matches 1 run function jmmf:block/cooking_station/open_tick

execute if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown: 12}
