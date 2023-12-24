# (I usually never make comments) #
  # - Configuration Guide - #


##  Running "/schedule clear blue:repeat" will stop beacons from giving effects to nearby (peaceful) entities.
  ##  "/function blue:repeat" will resume beacons giving their effects, at the normal interval specified below.


## Modifies how frequently entities should get effects from beacons, 20 being equivalent to 1 second, so 80 is 4 seconds, which is the normal rate for players.
data modify storage blue:beacon frequency.ticks set value 80


## Chooses if the effects entities gain from beacons should create particles, "true" meaing they'll be hidden, "false" meaning they'll be shown.
data modify storage blue:beacon main.particles set value "true"


## The following options let you manually decide the exact range and duration for all 4 levels (for entities), the below values being the default exactly like players
## ..Range is in blocks, so running {/data modify storage blue:beacon main.lvl2Range set value "1000"} will basically make level 2 beacons give their effects to every entity you can see
## ..Duration is in seconds, so running {/data modify storage blue:beacon main.lvl1Duration set value "120"} will make level 1 beacons give their effects for 2 minutes.
##    Do note that beacon effects will not be cleared, so you could easily change the effect and give all entities every effect (for the specified duration - interval time per)

data modify storage blue:beacon main.lvl1Range set value "20"
data modify storage blue:beacon main.lvl1Duration set value "11"

data modify storage blue:beacon main.lvl2Range set value "30"
data modify storage blue:beacon main.lvl2Duration set value "13"

data modify storage blue:beacon main.lvl3Range set value "40"
data modify storage blue:beacon main.lvl3Duration set value "15"

data modify storage blue:beacon main.lvl4Range set value "50"
data modify storage blue:beacon main.lvl4Duration set value "17"




##  ---------------------------------------
## Don't worry about these two commands, it just starts the initial loop and makes sure this function doesn't run again.. Unless someone resets scores for some bad reason
scoreboard players set -.loaded blue.beaconVal 1
schedule function blue:repeat 1s