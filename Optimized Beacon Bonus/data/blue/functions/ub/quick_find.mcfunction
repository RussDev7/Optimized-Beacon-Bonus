schedule function blue:ub/quick_find 1t
scoreboard players add -.quickFind blue.ub.val 1
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 run function blue:ub/place/quickfind/cast
execute if score -.quickFind blue.ub.val matches 300.. run function blue:ub/place/quickfind/stop