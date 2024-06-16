execute as @e[type=marker,tag=blue_b.marker] at @s store result score @s blue_b.beaconVal run data get block ~ ~ ~ Levels
schedule function blue_b:beacon/store 4s