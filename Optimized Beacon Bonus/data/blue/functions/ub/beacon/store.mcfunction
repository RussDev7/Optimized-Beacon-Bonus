tag @e[type=marker,tag=blue_b.marker] add blue.ub.marker
tag @e[type=marker,tag=blue_b.marker] remove blue_b.marker
execute as @e[type=marker,tag=blue.ub.marker] at @s align xyz unless entity @s[distance=..0.01] run tp ~ ~ ~
execute as @e[type=marker,tag=blue.ub.marker] at @s store result score @s blue.ub.val run data get block ~ ~ ~ Levels
execute store result storage blue:beacon main.lvl1dxz int 2 run data get storage blue:beacon main.lvl1Range
execute store result storage blue:beacon main.lvl2dxz int 2 run data get storage blue:beacon main.lvl2Range
execute store result storage blue:beacon main.lvl3dxz int 2 run data get storage blue:beacon main.lvl3Range
execute store result storage blue:beacon main.lvl4dxz int 2 run data get storage blue:beacon main.lvl4Range
schedule function blue:ub/beacon/store 4s