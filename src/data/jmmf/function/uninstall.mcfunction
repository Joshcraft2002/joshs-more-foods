

execute as @e[type=minecraft:armor_stand,tag=joshmats.morefoods.rice_making_station] at @s run summon minecraft:marker ~ ~ ~ {Tags:["joshmats.morefoods.uninstall"]}
execute as @e[type=minecraft:armor_stand,tag=joshmats.morefoods.rice_making_station] at @s run function morefoods:rice_making_station/remove_rice_making_station
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:item_frame",Count:1b,tag:{ctc:{id:'rice_making_station',from:'joshmats:morefoods',traits:{'block':1b}}}}}]

execute as @e[type=minecraft:marker,tag=joshmats.morefoods.uninstall] at @s run setblock ~ ~ ~ minecraft:air
kill @e[type=minecraft:marker,tag=joshmats.morefoods.uninstall]

tellraw @a ["",{"text":"Josh's More Foods", "color": "yellow","bold":false,"italic":false}, {"text":" uninstalled. It is now safe to remove the datapack.", "color": "blue", "bold":false,"italic":false}]