execute unless block ~ ~ ~ #blue_b:most_beacon_passable run return fail
execute if block ~ ~ ~ #blue_b:pistons[extended=false] run return fail
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return fail
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run function blue_b:beacon/raycast
execute if entity @s[distance=..1] run function blue_b:beacon/main