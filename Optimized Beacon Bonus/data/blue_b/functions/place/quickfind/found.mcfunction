kill @e[type=marker,tag=blue_b.marker,distance=..0.01,limit=1]
summon marker ~ ~ ~ {Tags:["blue_b.marker"],Rotation:[0.0f,90.0f]}
scoreboard players add @e[type=marker,tag=blue_b.marker,distance=..0.5,limit=1] blue_b.beaconVal 0
particle dust 1 1 1 1.2 ~ ~ ~ 0.35 0.35 0.35 0 64 force