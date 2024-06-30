tag @e[type=marker,tag=blue.ub.marker] add blue.beacon.marker
tag @e[type=marker,tag=blue.ub.marker] remove blue.ub.marker
execute as @e[type=marker,tag=blue.beacon.marker] at @s align xyz unless entity @s[distance=..0.01] run tp ~ ~ ~