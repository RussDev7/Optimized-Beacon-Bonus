## 20 (ticks) = 1 second. 
data modify storage blue:beacon frequency.ticks set value 80
scoreboard objectives add blue.beaconVal dummy
function blue:repeat