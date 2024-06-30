schedule function blue:beacon/quick_find 1t
scoreboard players add -.quickFind blue.beacon.val 1
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 run function blue:beacon/place/quickfind/cast
execute if score -.quickFind blue.beacon.val matches 300.. run function blue:beacon/place/quickfind/stop