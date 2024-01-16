particle dust 0.5 0.5 0.5 0.1 ~ ~-0.15 ~
execute unless block ~ ~ ~ beacon if entity @s[distance=..14] positioned ^ ^ ^0.2 run function blue_b:place/quickfind/cast
execute if block ~ ~ ~ beacon align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=blue_b.marker,distance=..0.01,limit=1] run function blue_b:place/quickfind/found