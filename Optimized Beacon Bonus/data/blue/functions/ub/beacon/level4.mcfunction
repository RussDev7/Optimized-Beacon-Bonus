data modify storage blue:beacon main.secondary set value ""
data modify storage blue:beacon main.secondary set from block ~ ~ ~ secondary_effect
data modify storage blue:beacon main.temp set from storage blue:beacon main.primary
execute store success score -.double blue.ub.val run data modify storage blue:beacon main.temp set from storage blue:beacon main.secondary
execute if score -.double blue.ub.val matches 0 run function blue:ub/beacon/primary/double with storage blue:beacon main
execute if score -.double blue.ub.val matches 1 run function blue:ub/beacon/primary/level4 with storage blue:beacon main