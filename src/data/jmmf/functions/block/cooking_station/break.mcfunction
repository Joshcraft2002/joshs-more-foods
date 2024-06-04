#loot spawn ~0.5 ~0.5 ~0.5 loot joshmats:morefoods/rice_making_station

#kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}}, distance=0..2,sort=nearest,limit=1]

#kill @s

#execute if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:barrel",Count:1b}}] run loot spawn ~ ~ ~ loot florcraft:item/natures_oculus
#kill @e[type=item,distance=..2,limit=1,nbt={Item:{id:"minecraft:barrel",Count:1b}}]
#kill @e[type=item,distance=..2,limit=1,nbt={Item:{tag:{flor_dat:{cleared:1b}}}}]
#kill @s

#data modify storage smithed.crafter:main temp.output_item set from entity @s ArmorItems[3].tag.smithed.stored_output
#data remove storage smithed.crafter:main temp.output_item.Slot
#execute if data entity @s ArmorItems[3].tag.smithed.stored_output.id as @e[type=item, sort=nearest, distance=..2, tag=!global.ignore, tag=!global.ignore.kill] run function smithed.crafter:v0.2.0/block/table/break/delete_output

execute if entity @e[type=item, nbt={Item: {id: "minecraft:barrel", Count: 1b}}, limit=1, sort=nearest, distance=..2] run function jmmf:block/cooking_station/break/drop_item
kill @e[type=item,distance=..2,nbt={Item:{tag:{jmmf:{gui:{}}}}}]
kill @s