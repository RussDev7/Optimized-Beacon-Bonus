kill @e[type=marker,tag=blue.be.marker,distance=..0.01,limit=1]
summon marker ~ ~ ~ {Tags:["blue.be.marker"],Rotation:[0.0f,90.0f]}
scoreboard players add @e[type=marker,tag=blue.be.marker,distance=..0.5,limit=1] blue.be.val 0
particle dust 1 1 1 0.8 ~ ~0.1 ~ 0.25 0.25 0.25 0 32