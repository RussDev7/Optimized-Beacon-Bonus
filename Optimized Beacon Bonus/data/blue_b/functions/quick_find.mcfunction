schedule function blue_b:quick_find 1t
scoreboard players add -.quickFind blue_b.beaconVal 1
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 run function blue_b:place/quickfind/cast
execute if score -.quickFind blue_b.beaconVal matches 300.. run function blue_b:place/quickfind/stop