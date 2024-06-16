scoreboard objectives add blue_b.beaconVal dummy
execute unless score -.loaded blue_b.beaconVal matches -10 run function blue_b:misc/firstload
schedule function blue_b:beacon/store 1s
schedule function blue_b:repeat 1s