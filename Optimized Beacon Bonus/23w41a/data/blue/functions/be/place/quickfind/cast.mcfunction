particle dust 0.5 0.5 0.5 0.1 ~ ~-0.15 ~ 0 0 0 0 1 force @s
execute unless block ~ ~ ~ beacon if entity @s[distance=..16] positioned ^ ^ ^0.1 run return run function blue:be/place/quickfind/cast
execute if block ~ ~ ~ beacon align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=blue.be.marker,distance=..0.01,limit=1] run function blue:be/place/quickfind/found
execute unless entity @s[distance=..16] run particle end_rod ~ ~-0.15 ~ 0 0 0 1000000 1 force @s