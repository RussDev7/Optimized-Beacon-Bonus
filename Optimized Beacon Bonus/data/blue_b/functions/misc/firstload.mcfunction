execute unless data storage blue:beacon main.type run data modify storage blue:beacon main.type set value "peaceful"
execute unless data storage blue:beacon frequency.ticks run data modify storage blue:beacon frequency.ticks set value 80
execute unless data storage blue:beacon main.lvl1Range run data modify storage blue:beacon main.lvl1Range set value 20
execute unless data storage blue:beacon main.lvl1Duration run data modify storage blue:beacon main.lvl1Duration set value 11
execute unless data storage blue:beacon main.lvl2Range run data modify storage blue:beacon main.lvl2Range set value 30
execute unless data storage blue:beacon main.lvl2Duration run data modify storage blue:beacon main.lvl2Duration set value 13
execute unless data storage blue:beacon main.lvl3Range run data modify storage blue:beacon main.lvl3Range set value 40
execute unless data storage blue:beacon main.lvl3Duration run data modify storage blue:beacon main.lvl3Duration set value 15
execute unless data storage blue:beacon main.lvl4Range run data modify storage blue:beacon main.lvl4Range set value 50
execute unless data storage blue:beacon main.lvl4Duration run data modify storage blue:beacon main.lvl4Duration set value 17
execute if data storage blue:beacon main.particles run data modify storage blue:beacon main.hideParticles set from storage blue:beacon main.particles
execute if data storage blue:beacon main.particles run data remove storage blue:beacon main.particles
execute unless data storage blue:beacon main.hideParticles run data modify storage blue:beacon main.hideParticles set value "true"
scoreboard players set -.loaded blue_b.beaconVal 9
schedule function blue_b:beacon/store 1s
schedule function blue_b:repeat 1s