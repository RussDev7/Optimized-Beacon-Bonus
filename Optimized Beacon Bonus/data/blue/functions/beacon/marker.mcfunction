execute unless block ~ ~ ~ beacon run kill
execute positioned over motion_blocking if entity @s[distance=..1] run function blue:beacon/main
execute positioned over motion_blocking unless entity @s[distance=..1] run function blue:beacon/raycast
scoreboard players add -.anytick blue.beaconVal 1