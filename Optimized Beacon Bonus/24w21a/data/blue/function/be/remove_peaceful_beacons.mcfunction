data remove storage blue:data beacon
scoreboard objectives remove blue.be.val
execute at @e[type=marker,tag=blue.be.marker] run forceload remove ~ ~
kill @e[type=marker,tag=blue.be.marker]
forceload add 1 1 0 0
tellraw @a [{"text":"You have disabled the ","color":"gray"},{"text":"Universal Beacons","color":"#29DFD9"}," datapack, and it has removed all the data it could from the world. If you wish to re-enable the datapack, run:\n",{"text":"/datapack enable \"file/Universal Beacons\"","color":"#1C85D6"}]
playsound block.bell.use master @a 0 -128 0 0 1 1
datapack disable "file/Universal Beacons"