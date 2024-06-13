execute store success score jmmf:temp1 jmmf.data if data storage jmmf:cooking_station {output:{components:{"minecraft:custom_data":{joshmats:{tag:"rice_bowl"}}}}}
execute if score jmmf:temp1 jmmf.data matches 0 store success score jmmf:temp1 jmmf.data unless data storage jmmf:cooking_station {output:{}}

execute if score jmmf:temp1 jmmf.data matches 1 run function jmmf:block/cooking_station/cooking/recipes/rice_bowl/setup
