scoreboard objectives add blue.beacon.temp dummy
execute store result score -.temp blue.beacon.temp run data get storage blue:data beacon.value.lvl1Duration
execute if score -.temp blue.beacon.temp matches ..0 run scoreboard players set -.1duration blue.beacon.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.beacon.temp
execute unless score -.temp blue.beacon.temp matches ..0 store success score -.1duration blue.beacon.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl1Duration
execute unless data storage blue:data beacon.value.lvl1Duration run scoreboard players set -.1duration blue.beacon.temp 1
execute store result score -.temp blue.beacon.temp run data get storage blue:data beacon.value.lvl2Duration
execute if score -.temp blue.beacon.temp matches ..0 run scoreboard players set -.2duration blue.beacon.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.beacon.temp
execute unless score -.temp blue.beacon.temp matches ..0 store success score -.2duration blue.beacon.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl2Duration
execute unless data storage blue:data beacon.value.lvl2Duration run scoreboard players set -.2duration blue.beacon.temp 1
execute store result score -.temp blue.beacon.temp run data get storage blue:data beacon.value.lvl3Duration
execute if score -.temp blue.beacon.temp matches ..0 run scoreboard players set -.3duration blue.beacon.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.beacon.temp
execute unless score -.temp blue.beacon.temp matches ..0 store success score -.3duration blue.beacon.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl3Duration
execute unless data storage blue:data beacon.value.lvl3Duration run scoreboard players set -.3duration blue.beacon.temp 1
execute store result score -.temp blue.beacon.temp run data get storage blue:data beacon.value.lvl4Duration
execute if score -.temp blue.beacon.temp matches ..0 run scoreboard players set -.4duration blue.beacon.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.beacon.temp
execute unless score -.temp blue.beacon.temp matches ..0 store success score -.4duration blue.beacon.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl4Duration
execute unless data storage blue:data beacon.value.lvl4Duration run scoreboard players set -.4duration blue.beacon.temp 1
execute store result score -.temp blue.beacon.temp run data get storage blue:data beacon.value.frequency
execute if score -.temp blue.beacon.temp matches ..0 run scoreboard players set -.frequency blue.beacon.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.beacon.temp
execute unless score -.temp blue.beacon.temp matches ..0 store success score -.frequency blue.beacon.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.frequency
execute unless data storage blue:data beacon.value.frequency run scoreboard players set -.frequency blue.beacon.temp 1
execute if data storage blue:data beacon.value{hideParticles:"true"} run scoreboard players set -.particles blue.beacon.temp 1
execute if data storage blue:data beacon.value{hideParticles:"false"} run scoreboard players set -.particles blue.beacon.temp 1
execute store success score -.1range blue.beacon.temp run function blue:beacon/check/1r with storage blue:data beacon.value
execute store success score -.2range blue.beacon.temp run function blue:beacon/check/2r with storage blue:data beacon.value
execute store success score -.3range blue.beacon.temp run function blue:beacon/check/3r with storage blue:data beacon.value
execute store success score -.4range blue.beacon.temp run function blue:beacon/check/4r with storage blue:data beacon.value
execute store success score -.type blue.beacon.temp run function blue:beacon/check/type with storage blue:data beacon.value
function blue:beacon/check/typecount with storage blue:data beacon.value
execute unless score -.1range blue.beacon.temp matches 0 unless score -.1duration blue.beacon.temp matches 1 unless score -.2range blue.beacon.temp matches 0 unless score -.2duration blue.beacon.temp matches 1 unless score -.3range blue.beacon.temp matches 0 unless score -.3duration blue.beacon.temp matches 1 unless score -.4range blue.beacon.temp matches 0 unless score -.4duration blue.beacon.temp matches 1 unless score -.frequency blue.beacon.temp matches 1 if score -.particles blue.beacon.temp matches 1 unless score -.type blue.beacon.temp matches 0 unless score -.typeCount blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"All settings should be functional","color":"dark_aqua"}]
execute if score -.type blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"type\"","color":"dark_aqua"}]
execute unless score -.type blue.beacon.temp matches 0 if score -.typeCount blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"\"type\" setting has a proper name, but no entities matched the tag, which could mean it was named improperly.","color":"dark_aqua"}]
execute if score -.frequency blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"frequency\"","color":"dark_aqua"}]
execute unless score -.particles blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"hideParticles\"","color":"dark_aqua"}]
execute if score -.1range blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl1Range\"","color":"dark_aqua"}]
execute if score -.1duration blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl1Duration\"","color":"dark_aqua"}]
execute if score -.2range blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl2Range\"","color":"dark_aqua"}]
execute if score -.2duration blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl2Duration\"","color":"dark_aqua"}]
execute if score -.3range blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl3Range\"","color":"dark_aqua"}]
execute if score -.3duration blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl3Duration\"","color":"dark_aqua"}]
execute if score -.4range blue.beacon.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl4Range\"","color":"dark_aqua"}]
execute if score -.4duration blue.beacon.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl4Duration\"","color":"dark_aqua"}]
data remove storage blue:data beacon.value.check
scoreboard objectives remove blue.beacon.temp
playsound entity.chicken.egg player @s ~ ~ ~ 1 0.5