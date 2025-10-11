summon item_display ~ ~ ~ {UUID:[I;1108635501,-666943135,-1463293571,-1776192742],view_range:0f}

loot replace entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents fish \
    {\
        pools:[\
            {\
                rolls:1,\
                entries:[\
                    {\
                        type:"item",\
                        name:"stone",\
                        functions:[\
                            {\
                                function:"set_components",\
                                components:{\
                                    "!minecraft:max_stack_size":{},\
                                }\
                            },\
                            {\
                                function:"copy_components",\
                                source:"tool"\
                            }\
                        ]\
                    }\
                ]\
            }\
        ]\
    } \
    ~ ~ ~ mainhand

data remove storage 42:io data.output.components
data modify storage 42:io data.output.components set from entity 42146f6d-d83f-4161-a8c7-e97d9621731a item.components

data remove storage 42:io data.output.components.!minecraft:max_stack_size

execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[max_stack_size=64] run data modify storage 42:io data.output.components.minecraft:max_stack_size set value 64

kill 42146f6d-d83f-4161-a8c7-e97d9621731a

tellraw @a {storage:"42:io",nbt:"data.output.components.minecraft:max_stack_size"}