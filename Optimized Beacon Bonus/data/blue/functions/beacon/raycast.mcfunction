execute if entity @s[distance=..2] run function blue:beacon/main
execute unless block ~ ~ ~ #blue:most_beacon_passable run return 0
execute positioned ~ ~-1 ~ unless entity @s[distance=..1] run function blue:beacon/raycast