execute unless block ~ ~ ~ #blue:beacon/passable run return 0
execute if block ~ ~ ~ #blue:beacon/pistons[extended=false] run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=double] run return 0
execute if block ~ ~ ~ snow[layers=8] run return 0
execute unless entity @s[distance=..0.6] positioned ~ ~-1 ~ run function blue:be/main/raycast
execute at @s[distance=..0.6] run function blue:be/main/core