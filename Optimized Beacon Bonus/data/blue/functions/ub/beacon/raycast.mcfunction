execute unless block ~ ~ ~ #blue:ub/passable run return 0
execute if block ~ ~ ~ #blue:ub/pistons[extended=false] run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return 0
execute if block ~ ~ ~ snow[layers=8] run return 0
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run function blue:ub/beacon/raycast
execute if entity @s[distance=..1] run function blue:ub/beacon/main