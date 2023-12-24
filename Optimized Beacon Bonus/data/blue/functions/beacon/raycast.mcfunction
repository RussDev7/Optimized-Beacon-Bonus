execute unless block ~ ~ ~ #blue:most_beacon_passable run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return 0
execute if block ~ ~ ~ #blue:pistons[extended=false] run return 0
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run function blue:beacon/raycast
execute if entity @s[distance=..1] run function blue:beacon/main