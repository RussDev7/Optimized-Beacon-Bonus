data modify storage blue:data beacon.value.secondary set value ""
data modify storage blue:data beacon.value.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:data beacon.value.temp set from storage blue:data beacon.value.primary
execute store success score -.double blue.beacon.val run data modify storage blue:data beacon.value.temp set from storage blue:data beacon.value.secondary
execute if score -.double blue.beacon.val matches 0 run function blue:beacon/main/primary/double with storage blue:data beacon.value
execute if score -.double blue.beacon.val matches 1 run function blue:beacon/main/primary/level4 with storage blue:data beacon.value