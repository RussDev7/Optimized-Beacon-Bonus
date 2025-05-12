execute unless block ~ ~ ~ #blue:beacon/passable run return fail
execute if block ~ ~ ~ #blue:beacon/odd if function blue:be/main/block run return fail
execute unless entity @s[distance=..0.6] positioned ~ ~-1 ~ run return run function blue:be/main/raycast
execute unless block ~ ~ ~ beacon at @s run return run function blue:be/main/core
execute unless data block ~ ~ ~ primary_effect run return fail
data modify storage blue:data beacon.value.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.be.val matches 1 run return run function blue:be/main/primary/level1 with storage blue:data beacon.value
execute if score @s blue.be.val matches 2 run return run function blue:be/main/primary/level2 with storage blue:data beacon.value
execute if score @s blue.be.val matches 3 run return run function blue:be/main/primary/level3 with storage blue:data beacon.value
data modify storage blue:data beacon.value.secondary set value "minecraft:regeneration"
data modify storage blue:data beacon.value.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:data beacon.temp.secondary set from storage blue:data beacon.value.secondary
execute store success score -.double blue.be.val run data modify storage blue:data beacon.temp.secondary set from storage blue:data beacon.value.primary
execute if score -.double blue.be.val matches 0 run return run function blue:be/main/primary/double with storage blue:data beacon.value
function blue:be/main/primary/level4 with storage blue:data beacon.value