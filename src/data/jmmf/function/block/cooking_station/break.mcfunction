execute if entity @e[type=item, nbt={Item: {id: "minecraft:barrel", count: 1}}, limit=1, sort=nearest, distance=..2] run function jmmf:block/cooking_station/break/drop_item
kill @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{joshmats:{gui:{}}}}}}]
kill @s