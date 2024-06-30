scoreboard objectives add blue.beacon.val dummy
execute if score -.loaded blue_b.beaconVal matches -11.. run function blue:beacon/misc/old
execute unless score -.loaded blue.beacon.val matches -12 run function blue:beacon/misc/firstload
schedule function blue:beacon/main/store 1s
schedule function blue:beacon/repeat 1s