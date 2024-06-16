data remove storage blue:beacon main
data remove storage blue:beacon temp
data remove storage blue:beacon frequency
scoreboard objectives remove blue_b.beaconVal
kill @e[type=marker,tag=blue_b.marker]
tellraw @s [{"text":"You have disabled ","color":"gray"},{"text":"ActuallyBlue's","color":"dark_aqua"},{"text":" Universal Beacons","color":"aqua"},{"text":" datapack, and it has removed all the data it could from the world. If you wish to re-enable the datapack, run:\n","color":"gray"},{"text":"/datapack enable \"file/Universal Beacons\"\n","color":"white"}]
playsound block.bell.use master @a 0 -128 0 0 1 1
datapack disable "file/Universal Beacons"