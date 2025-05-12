schedule function blue:be/quick_find 1t
scoreboard players add -.quickFind blue.be.val 1
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 run function blue:be/place/quickfind/cast
execute if score -.quickFind blue.be.val matches 300.. run function blue:be/place/quickfind/stop