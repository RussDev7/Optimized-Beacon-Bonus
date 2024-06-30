execute unless block ~ ~ ~ #blue:beacon/passable run return fail
execute if block ~ ~ ~ #blue:beacon/odd if function blue:beacon/main/block run return fail
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run return run function blue:beacon/main/raycast
execute unless data block ~ ~ ~ primary_effect run return fail
data modify storage blue:data beacon.value.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.beacon.val matches 1 run return run function blue:beacon/main/primary/level1 with storage blue:data beacon.value
execute if score @s blue.beacon.val matches 2 run return run function blue:beacon/main/primary/level2 with storage blue:data beacon.value
execute if score @s blue.beacon.val matches 3 run return run function blue:beacon/main/primary/level3 with storage blue:data beacon.value
data modify storage blue:data beacon.value.secondary set value ""
data modify storage blue:data beacon.value.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:data beacon.value.temp set from storage blue:data beacon.value.primary
execute store success score -.double blue.beacon.val run data modify storage blue:data beacon.value.temp set from storage blue:data beacon.value.secondary
execute if score -.double blue.beacon.val matches 0 run return run function blue:beacon/main/primary/double with storage blue:data beacon.value
function blue:beacon/main/primary/level4 with storage blue:data beacon.value