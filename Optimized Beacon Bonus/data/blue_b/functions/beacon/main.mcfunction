execute unless data block ~ ~-0.5 ~ primary_effect run return 0
data modify storage blue:beacon main.primary set from block ~ ~-0.5 ~ primary_effect
execute if score @s blue_b.beaconVal matches 1 run function blue_b:beacon/primary/level1 with storage blue:beacon main
execute if score @s blue_b.beaconVal matches 2 run function blue_b:beacon/primary/level2 with storage blue:beacon main
execute if score @s blue_b.beaconVal matches 3 run function blue_b:beacon/primary/level3 with storage blue:beacon main
execute if score @s blue_b.beaconVal matches 4 run function blue_b:beacon/level4