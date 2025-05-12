tellraw @s [{"text":"- ","color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"This setting won't forceload beacons that aren't currently loaded"}}},{"text":"Forceloading beacons has been"},{"text":": ","color":"gray"},{"text":" Enabled","color":"green"}]
execute at @e[type=marker,tag=blue.be.marker] run forceload add ~ ~
schedule function blue:be/forceload/loop 1s