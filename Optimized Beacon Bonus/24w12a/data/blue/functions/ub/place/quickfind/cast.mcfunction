particle dust{color:[0.5f,0.5f,0.5f],scale:0.1f} ~ ~-0.15 ~ 0 0 0 0 1 force @s
execute unless block ~ ~ ~ beacon if entity @s[distance=..16] positioned ^ ^ ^0.1 run function blue:ub/place/quickfind/cast
execute if block ~ ~ ~ beacon align xyz unless entity @e[type=marker,tag=blue.ub.marker,distance=..0.01,limit=1] run function blue:ub/place/quickfind/found
execute unless entity @s[distance=..16] run particle end_rod ~ ~-0.15 ~ 0 0 0 1000000 1 force @s