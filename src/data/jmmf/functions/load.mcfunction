#generic data
scoreboard objectives add jmmf.data dummy

#generic crafter data
scoreboard objectives add jmmf.open dummy
scoreboard objectives add jmmf.update_ui dummy

#cooking station
scoreboard objectives add jmmf.active dummy
scoreboard objectives add jmmf.cook_time dummy
scoreboard objectives add jmmf.recipeid dummy
scoreboard objectives add jmmf.water_level dummy

#slots
scoreboard objectives add jmmf.count dummy
scoreboard objectives add jmmf.count.0 dummy
scoreboard objectives add jmmf.count.1 dummy
scoreboard objectives add jmmf.count.2 dummy
scoreboard objectives add jmmf.count.3 dummy
scoreboard objectives add jmmf.count.4 dummy
scoreboard objectives add jmmf.count.5 dummy
scoreboard objectives add jmmf.count.6 dummy
scoreboard objectives add jmmf.count.7 dummy

function jmmf:technical/tick
function jmmf:technical/tick20t

#backwards compat, removing my old scoreboards
scoreboard objectives remove jm.mf.0Count 
scoreboard objectives remove jm.mf.1Count 
scoreboard objectives remove jm.mf.2Count 
scoreboard objectives remove jm.mf.3Count 
scoreboard objectives remove jm.mf.4Count 
scoreboard objectives remove jm.mf.5Count 
scoreboard objectives remove jm.mf.6Count 
scoreboard objectives remove jm.mf.7Count 
scoreboard objectives remove jm.mf.8Count 
scoreboard objectives remove jm.mf.valid 
