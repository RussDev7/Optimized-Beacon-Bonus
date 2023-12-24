data modify storage blue:beacon main.secondary set value {}
data modify storage blue:beacon main.secondary set from block ~ ~-0.5 ~ secondary_effect
data modify storage blue:beacon main.temp set from storage blue:beacon main.primary
execute store success score -.double blue.beaconVal run data modify storage blue:beacon main.temp set from storage blue:beacon main.secondary
execute if score -.double blue.beaconVal matches 1 run function blue:beacon/primary/level4 with storage blue:beacon main
execute if score -.double blue.beaconVal matches 1 run function blue:beacon/secondary with storage blue:beacon main
execute if score -.double blue.beaconVal matches 0 run function blue:beacon/double with storage blue:beacon main