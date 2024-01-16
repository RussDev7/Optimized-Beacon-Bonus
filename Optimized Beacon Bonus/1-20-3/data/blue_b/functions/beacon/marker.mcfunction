execute unless block ~ ~ ~ beacon run return run kill
execute positioned over motion_blocking_no_leaves if entity @s[distance=..1] run return run function blue_b:beacon/main
execute positioned over motion_blocking_no_leaves unless entity @s[distance=..1] run function blue_b:beacon/raycast