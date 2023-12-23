data modify storage blue:beacon main.temp set from storage blue:beacon main.primary
execute store success score -.double blue.beaconVal run data modify storage blue:beacon main.temp set from storage blue:beacon main.secondary
execute if data storage blue:beacon main.secondary if score -.double blue.beaconVal matches 1 run function blue:beacon/secondary/level2 with storage blue:beacon main
execute if score -.double blue.beaconVal matches 1 run function blue:beacon/primary/level2 with storage blue:beacon main
execute if score -.double blue.beaconVal matches 0 run function blue:beacon/double/level2 with storage blue:beacon main