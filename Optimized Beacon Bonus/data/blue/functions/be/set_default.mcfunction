data remove storage blue:data beacon.value
data modify storage blue:data beacon.value.type set value "peaceful"
data modify storage blue:data beacon.value.frequency set value 80
data modify storage blue:data beacon.value.lvl1Range set value 20
data modify storage blue:data beacon.value.lvl1Duration set value 11
data modify storage blue:data beacon.value.lvl2Range set value 30
data modify storage blue:data beacon.value.lvl2Duration set value 13
data modify storage blue:data beacon.value.lvl3Range set value 40
data modify storage blue:data beacon.value.lvl3Duration set value 15
data modify storage blue:data beacon.value.lvl4Range set value 50
data modify storage blue:data beacon.value.lvl4Duration set value 17
data modify storage blue:data beacon.value.hideParticles set value "true"
tellraw @s [{"text":"All values within the ","color":"#1C85D6"},{"text":"Universal Beacons","color":"#29DFD9"}," datapack have been set to their default."]
playsound entity.chicken.egg player @s ~ ~ ~ 1 0.5
function blue:be/repeat