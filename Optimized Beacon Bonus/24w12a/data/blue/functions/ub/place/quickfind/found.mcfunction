kill @e[type=marker,tag=blue.ub.marker,distance=..0.01,limit=1]
summon marker ~ ~ ~ {Tags:["blue.ub.marker"],Rotation:[0.0f,90.0f]}
scoreboard players add @e[type=marker,tag=blue.ub.marker,distance=..0.5,limit=1] blue.ub.val 0
particle dust{color:[1f,1f,1f],scale:1.2f} ~0.5 ~0.5 ~0.5 0.35 0.35 0.35 0 64 force @s