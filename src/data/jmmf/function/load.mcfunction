#generic data
scoreboard objectives add jmmf.data dummy

#generic crafter data
scoreboard objectives add jmmf.open dummy
scoreboard objectives add jmmf.update_ui dummy

#cooking station
scoreboard objectives add jmmf.active dummy
scoreboard objectives add jmmf.cook_time dummy
scoreboard objectives add jmmf.recipe_id dummy
scoreboard objectives add jmmf.water_level dummy
scoreboard objectives add jmmf.max_stack_size dummy

# 0 - no cookware
# 1 - pot
# 2 - pan
scoreboard objectives add jmmf.cook_mode dummy

#slots
scoreboard objectives add jmmf.count dummy
scoreboard objectives add jmmf.count.0 dummy
scoreboard objectives add jmmf.count.1 dummy
scoreboard objectives add jmmf.count.2 dummy
scoreboard objectives add jmmf.count.3 dummy
scoreboard objectives add jmmf.count.4 dummy
scoreboard objectives add jmmf.count.5 dummy
scoreboard objectives add jmmf.count.6 dummy
scoreboard objectives add jmmf.count.8 dummy
scoreboard objectives add jmmf.count.9 dummy
scoreboard objectives add jmmf.count.output dummy

function jmmf:technical/tick
function jmmf:technical/tick20t

#say jmmf loaded
