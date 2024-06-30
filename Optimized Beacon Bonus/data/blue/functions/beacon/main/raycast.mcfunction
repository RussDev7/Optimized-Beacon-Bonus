execute unless block ~ ~ ~ #blue:beacon/passable run return 0
execute if block ~ ~ ~ #blue:beacon/pistons[extended=false] run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return 0
execute if block ~ ~ ~ snow[layers=8] run return 0
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run function blue:beacon/main/raycast
execute if entity @s[distance=..1] run function blue:beacon/main/core