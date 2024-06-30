scoreboard objectives remove blue.ub.val
tag @e[type=marker,tag=blue.ub.marker] add blue.beacon.marker
tag @e[type=marker,tag=blue.ub.marker] remove blue.ub.marker
execute as @e[type=marker,tag=blue.beacon.marker] at @s store result score @s blue.beacon.val run data get block ~ ~ ~ Levels
data modify storage blue:data beacon set from storage blue:beacon
data modify storage blue:data beacon.value.frequency set from storage blue:data beacon.value.frequency.ticks
data remove storage blue:data beacon.value.frequency.ticks
data remove storage blue:beacon frequency
data remove storage blue:beacon main
data remove storage blue:beacon temp