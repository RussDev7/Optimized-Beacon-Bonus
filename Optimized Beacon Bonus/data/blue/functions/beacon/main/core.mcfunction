execute unless data block ~ ~ ~ primary_effect run return 0
data modify storage blue:data beacon.value.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.beacon.val matches 1 run function blue:beacon/main/primary/level1 with storage blue:data beacon.value
execute if score @s blue.beacon.val matches 2 run function blue:beacon/main/primary/level2 with storage blue:data beacon.value
execute if score @s blue.beacon.val matches 3 run function blue:beacon/main/primary/level3 with storage blue:data beacon.value
execute if score @s blue.beacon.val matches 4 run function blue:beacon/main/level4