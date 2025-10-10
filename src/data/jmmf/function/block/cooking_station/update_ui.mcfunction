execute if score @s jmmf.cook_time matches 4 run item replace block ~ ~ ~ container.3 with structure_block[item_model="joshmats:empty",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]
execute if score @s jmmf.cook_time matches 3 run item replace block ~ ~ ~ container.3 with structure_block[item_model="jmmf:gui/cooking_station/cook_0",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]
execute if score @s jmmf.cook_time matches 2 run item replace block ~ ~ ~ container.3 with structure_block[item_model="jmmf:gui/cooking_station/cook_1",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]
execute if score @s jmmf.cook_time matches 1 run item replace block ~ ~ ~ container.3 with structure_block[item_model="jmmf:gui/cooking_station/cook_2",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]
execute if score @s jmmf.cook_time matches 0 run item replace block ~ ~ ~ container.3 with structure_block[item_model="jmmf:gui/cooking_station/cook_3",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cook_time"}}}]

execute if score @s jmmf.water_level matches 0 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_0",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 1 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_1",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 2 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_2",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 3 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_3",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 4 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_4",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 5 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_5",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 6 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_6",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 7 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_7",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 8 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_8",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 9 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_9",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 10 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_10",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 11 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_11",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 12 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_12",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 13 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_13",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 14 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_14",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 15 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_15",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]
execute if score @s jmmf.water_level matches 16 run item replace block ~ ~ ~ container.12 with structure_block[item_model="jmmf:gui/water_tank_16",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_water_level"}}}]

execute if score @s jmmf.cook_mode matches 0 run item replace block ~ ~ ~ container.21 with structure_block[item_model="jmmf:gui/cooking_station/cookware_placeholder",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cookware_placeholder"}}}]
execute if score @s jmmf.cook_mode matches 1.. run item replace block ~ ~ ~ container.21 with structure_block[item_model="joshmats:empty",custom_data={joshmats:{gui:{id:"jmmf:cooking_station_cookware_placeholder"}}}]

item modify block ~ ~ ~ container.3 jmmf:water_level
item modify block ~ ~ ~ container.12 jmmf:water_level
item modify block ~ ~ ~ container.21 jmmf:water_level

scoreboard players set @s jmmf.update_ui 0