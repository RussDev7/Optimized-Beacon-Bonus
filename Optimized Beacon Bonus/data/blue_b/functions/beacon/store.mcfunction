execute as @e[type=marker,tag=blue_b.marker] at @s store result score @s blue_b.beaconVal run data get block ~ ~ ~ Levels
scoreboard players set @e[type=marker,tag=blue_b.marker,scores={blue_b.beaconVal=0}] blue_b.beaconVal 1
schedule function blue_b:beacon/store 4s