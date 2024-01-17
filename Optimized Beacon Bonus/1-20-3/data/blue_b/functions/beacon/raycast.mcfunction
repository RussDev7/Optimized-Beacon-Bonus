execute unless block ~ ~ ~ #blue_b:most_beacon_passable run return fail
execute if block ~ ~ ~ #blue_b:pistons[extended=false] run return fail
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return fail
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run return run function blue_b:beacon/raycast
execute unless data block ~ ~-0.5 ~ primary_effect run return fail
data modify storage blue:beacon main.primary set from block ~ ~-0.5 ~ primary_effect
execute if score @s blue_b.beaconVal matches 1 run return run function blue_b:beacon/primary/level1 with storage blue:beacon main
execute if score @s blue_b.beaconVal matches 2 run return run function blue_b:beacon/primary/level2 with storage blue:beacon main
execute if score @s blue_b.beaconVal matches 3 run return run function blue_b:beacon/primary/level3 with storage blue:beacon main
data modify storage blue:beacon main.secondary set value {}
data modify storage blue:beacon main.secondary set from block ~ ~-0.5 ~ secondary_effect
data modify storage blue:beacon temp set from storage blue:beacon main.primary
execute store success score -.double blue_b.beaconVal run data modify storage blue:beacon temp set from storage blue:beacon main.secondary
execute if score -.double blue_b.beaconVal matches 0 run return run function blue_b:beacon/primary/double with storage blue:beacon main
execute if score -.double blue_b.beaconVal matches 1 run function blue_b:beacon/primary/level4 with storage blue:beacon main
execute if score -.double blue_b.beaconVal matches 1 unless data storage blue:beacon temp{} run function blue_b:beacon/secondary with storage blue:beacon main