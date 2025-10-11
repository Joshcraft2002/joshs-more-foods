# Get the value of the desired output temporarily in the mainhand then immediately clear
data modify storage jmmf:cooking_station temp.output.desired set from entity @s equipment.mainhand
data remove entity @s equipment.mainhand

# If there is no current item in output slot, fail
execute unless data storage jmmf:cooking_station {output:{}} run return fail

# Copy current output item to temp current output
data modify storage jmmf:cooking_station temp.output.current set from storage jmmf:cooking_station output

# Ignore item count and slot
data remove storage jmmf:cooking_station temp.output.desired.count
data remove storage jmmf:cooking_station temp.output.current.count
data remove storage jmmf:cooking_station temp.output.current.Slot

# Check whether the items match, return success (1) if they do
return run data modify storage jmmf:cooking_station temp.output.current set from storage jmmf:cooking_station temp.output.desired