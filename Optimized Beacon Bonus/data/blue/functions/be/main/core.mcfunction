execute unless data block ~ ~ ~ primary_effect run return 0
data modify storage blue:data beacon.value.primary set from block ~ ~ ~ primary_effect
execute if score @s blue.be.val matches 1 run function blue:be/main/primary/level1 with storage blue:data beacon.value
execute if score @s blue.be.val matches 2 run function blue:be/main/primary/level2 with storage blue:data beacon.value
execute if score @s blue.be.val matches 3 run function blue:be/main/primary/level3 with storage blue:data beacon.value
execute unless score @s blue.be.val matches 4 run return 0
data modify storage blue:data beacon.value.secondary set value "minecraft:regeneration"
data modify storage blue:data beacon.value.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:data beacon.temp.secondary set from storage blue:data beacon.value.secondary
execute store success score -.double blue.be.val run data modify storage blue:data beacon.temp.secondary set from storage blue:data beacon.value.primary
execute if score -.double blue.be.val matches 0 run function blue:be/main/primary/double with storage blue:data beacon.value
execute if score -.double blue.be.val matches 1 run function blue:be/main/primary/level4 with storage blue:data beacon.value