execute if entity @e[type=marker,tag=blue.ub.marker,limit=1] run function blue:beacon/main/convert
execute as @e[type=marker,tag=blue.beacon.marker] at @s store result score @s blue.beacon.val run data get block ~ ~ ~ Levels
execute store result storage blue:data beacon.value.lvl1dxz int 2 store result score -.temp blue.beacon.val run data get storage blue:data beacon.value.lvl1Range
execute store result storage blue:data beacon.value.lvl1dy int 1 run scoreboard players add -.temp blue.beacon.val 384
execute if score -.temp blue.beacon.val matches 770.. run data modify storage blue:data beacon.value.lvl1dy set from storage blue:data beacon.value.lvl1dxz
execute store result storage blue:data beacon.value.lvl2dxz int 2 store result score -.temp blue.beacon.val run data get storage blue:data beacon.value.lvl2Range
execute store result storage blue:data beacon.value.lvl2dy int 1 run scoreboard players add -.temp blue.beacon.val 384
execute if score -.temp blue.beacon.val matches 770.. run data modify storage blue:data beacon.value.lvl2dy set from storage blue:data beacon.value.lvl2dxz
execute store result storage blue:data beacon.value.lvl3dxz int 2 store result score -.temp blue.beacon.val run data get storage blue:data beacon.value.lvl3Range
execute store result storage blue:data beacon.value.lvl3dy int 1 run scoreboard players add -.temp blue.beacon.val 384
execute if score -.temp blue.beacon.val matches 770.. run data modify storage blue:data beacon.value.lvl3dy set from storage blue:data beacon.value.lvl3dxz
execute store result storage blue:data beacon.value.lvl4dxz int 2 store result score -.temp blue.beacon.val run data get storage blue:data beacon.value.lvl4Range
execute store result storage blue:data beacon.value.lvl4dy int 1 run scoreboard players add -.temp blue.beacon.val 384
execute if score -.temp blue.beacon.val matches 770.. run data modify storage blue:data beacon.value.lvl4dy set from storage blue:data beacon.value.lvl4dxz
schedule function blue:beacon/main/store 6s