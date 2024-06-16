execute unless data block ~ ~ ~ primary_effect run return 0
data modify storage blue:beacon main.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.ub.val matches 1 run function blue:ub/beacon/primary/level1 with storage blue:beacon main
execute if score @s blue.ub.val matches 2 run function blue:ub/beacon/primary/level2 with storage blue:beacon main
execute if score @s blue.ub.val matches 3 run function blue:ub/beacon/primary/level3 with storage blue:beacon main
execute if score @s blue.ub.val matches 4 run function blue:ub/beacon/level4