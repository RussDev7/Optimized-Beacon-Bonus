scoreboard objectives add blue.ub.val dummy
execute if score -.loaded blue_b.beaconVal matches ..0 run scoreboard objectives remove blue_b.beaconVal
execute unless score -.loaded blue.ub.val matches -10 run function blue:ub/misc/firstload
schedule function blue:ub/beacon/store 1s
schedule function blue:ub/repeat 1s