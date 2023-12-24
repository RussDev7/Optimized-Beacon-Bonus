execute unless data block ~ ~-0.5 ~ primary_effect run return 0
execute store result score -.levels blue.beaconVal run data get block ~ ~-0.5 ~ Levels
data modify storage blue:beacon main.primary set from block ~ ~-0.5 ~ primary_effect
execute if score -.levels blue.beaconVal matches 1 run function blue:beacon/primary/level1 with storage blue:beacon main
execute if score -.levels blue.beaconVal matches 2 run function blue:beacon/primary/level2 with storage blue:beacon main
execute if score -.levels blue.beaconVal matches 3 run function blue:beacon/primary/level3 with storage blue:beacon main
execute if score -.levels blue.beaconVal matches 4 run function blue:beacon/level4
scoreboard players add -.tick blue.beaconVal 1