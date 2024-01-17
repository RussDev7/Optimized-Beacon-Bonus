kill @e[type=marker,tag=blue_b.marker,distance=..0.01,limit=1]
summon marker ~ ~ ~ {Tags:["blue_b.marker"],Rotation:[0.0f,90.0f]}
scoreboard players set @e[type=marker,tag=blue_b.marker,distance=..0.5,limit=1] blue_b.beaconVal 1
particle dust 1 1 1 0.8 ~ ~0.1 ~ 0.25 0.25 0.25 0 32