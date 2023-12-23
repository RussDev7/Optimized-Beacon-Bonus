data remove storage blue:beacon main
execute store result score -.levels blue.beaconVal run data get block ~ ~-0.5 ~ Levels
data modify storage blue:beacon main.primary set from block ~ ~-0.5 ~ primary_effect
data modify storage blue:beacon main.secondary set from block ~ ~-0.5 ~ secondary_effect
execute if score -.levels blue.beaconVal matches 1 run function blue:beacon/level1
execute if score -.levels blue.beaconVal matches 2 run function blue:beacon/level2
execute if score -.levels blue.beaconVal matches 3 run function blue:beacon/level3
execute if score -.levels blue.beaconVal matches 4 run function blue:beacon/level4