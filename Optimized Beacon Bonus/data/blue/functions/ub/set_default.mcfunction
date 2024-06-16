data remove storage blue:beacon main
data modify storage blue:beacon main.type set value "peaceful"
data modify storage blue:beacon main.frequency.ticks set value 80
data modify storage blue:beacon main.lvl1Range set value 20
data modify storage blue:beacon main.lvl1Duration set value 11
data modify storage blue:beacon main.lvl2Range set value 30
data modify storage blue:beacon main.lvl2Duration set value 13
data modify storage blue:beacon main.lvl3Range set value 40
data modify storage blue:beacon main.lvl3Duration set value 15
data modify storage blue:beacon main.lvl4Range set value 50
data modify storage blue:beacon main.lvl4Duration set value 17
data modify storage blue:beacon main.hideParticles set value "true"
tellraw @s {"text":"All values within the \"Universal Beacons\" datapack have been set to their default.","color":"dark_aqua"}
playsound entity.chicken.egg player @s ~ ~ ~ 1 0.5
function blue:ub/repeat