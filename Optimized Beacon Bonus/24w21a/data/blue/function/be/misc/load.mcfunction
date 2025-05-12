scoreboard objectives add blue.be.val dummy
execute unless score -.loaded blue.be.val matches -103 run function blue:be/misc/firstload
schedule function blue:be/main/store 1s
schedule function blue:be/repeat 1s