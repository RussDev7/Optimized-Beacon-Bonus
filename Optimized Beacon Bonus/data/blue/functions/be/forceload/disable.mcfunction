tellraw @s [{"text":"- ","color":"gray"},{"text":"Forceloading beacons has been"},{"text":": ","color":"gray"},{"text":" Disabled","color":"red"}]
execute at @e[type=marker,tag=blue.be.marker] run forceload remove ~ ~
schedule clear blue:be/forceload/loop
forceload add 1 1 0 0