execute unless block ~ ~ ~ #blue:ub/passable run return fail
execute if block ~ ~ ~ #blue:ub/odd if function blue:ub/beacon/block run return fail
execute unless entity @s[distance=..1] positioned ~ ~-1 ~ run return run function blue:ub/beacon/raycast
execute unless data block ~ ~ ~ primary_effect run return fail
data modify storage blue:beacon main.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.ub.val matches 1 run return run function blue:ub/beacon/primary/level1 with storage blue:beacon main
execute if score @s blue.ub.val matches 2 run return run function blue:ub/beacon/primary/level2 with storage blue:beacon main
execute if score @s blue.ub.val matches 3 run return run function blue:ub/beacon/primary/level3 with storage blue:beacon main
data modify storage blue:beacon main.secondary set value ""
data modify storage blue:beacon main.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:beacon main.temp set from storage blue:beacon main.primary
execute store success score -.double blue.ub.val run data modify storage blue:beacon main.temp set from storage blue:beacon main.secondary
execute if score -.double blue.ub.val matches 0 run return run function blue:ub/beacon/primary/double with storage blue:beacon main
function blue:ub/beacon/primary/level4 with storage blue:beacon main