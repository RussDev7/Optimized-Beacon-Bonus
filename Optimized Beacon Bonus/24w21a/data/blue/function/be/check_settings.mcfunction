scoreboard objectives add blue.be.temp dummy
execute store result score -.temp blue.be.temp run data get storage blue:data beacon.value.lvl1Duration
execute if score -.temp blue.be.temp matches ..0 run scoreboard players set -.1duration blue.be.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.be.temp
execute unless score -.temp blue.be.temp matches ..0 store success score -.1duration blue.be.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl1Duration
execute unless data storage blue:data beacon.value.lvl1Duration run scoreboard players set -.1duration blue.be.temp 1
execute store result score -.temp blue.be.temp run data get storage blue:data beacon.value.lvl2Duration
execute if score -.temp blue.be.temp matches ..0 run scoreboard players set -.2duration blue.be.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.be.temp
execute unless score -.temp blue.be.temp matches ..0 store success score -.2duration blue.be.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl2Duration
execute unless data storage blue:data beacon.value.lvl2Duration run scoreboard players set -.2duration blue.be.temp 1
execute store result score -.temp blue.be.temp run data get storage blue:data beacon.value.lvl3Duration
execute if score -.temp blue.be.temp matches ..0 run scoreboard players set -.3duration blue.be.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.be.temp
execute unless score -.temp blue.be.temp matches ..0 store success score -.3duration blue.be.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl3Duration
execute unless data storage blue:data beacon.value.lvl3Duration run scoreboard players set -.3duration blue.be.temp 1
execute store result score -.temp blue.be.temp run data get storage blue:data beacon.value.lvl4Duration
execute if score -.temp blue.be.temp matches ..0 run scoreboard players set -.4duration blue.be.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.be.temp
execute unless score -.temp blue.be.temp matches ..0 store success score -.4duration blue.be.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.lvl4Duration
execute unless data storage blue:data beacon.value.lvl4Duration run scoreboard players set -.4duration blue.be.temp 1
execute store result score -.temp blue.be.temp run data get storage blue:data beacon.value.frequency
execute if score -.temp blue.be.temp matches ..0 run scoreboard players set -.frequency blue.be.temp 1
execute store result storage blue:data beacon.value.check.temp int 1 run scoreboard players get -.temp blue.be.temp
execute unless score -.temp blue.be.temp matches ..0 store success score -.frequency blue.be.temp run data modify storage blue:data beacon.value.check.temp set from storage blue:data beacon.value.frequency
execute unless data storage blue:data beacon.value.frequency run scoreboard players set -.frequency blue.be.temp 1
execute if data storage blue:data beacon.value{hideParticles:"true"} run scoreboard players set -.particles blue.be.temp 1
execute if data storage blue:data beacon.value{hideParticles:"false"} run scoreboard players set -.particles blue.be.temp 1
execute store success score -.1range blue.be.temp run function blue:be/check/1r with storage blue:data beacon.value
execute store success score -.2range blue.be.temp run function blue:be/check/2r with storage blue:data beacon.value
execute store success score -.3range blue.be.temp run function blue:be/check/3r with storage blue:data beacon.value
execute store success score -.4range blue.be.temp run function blue:be/check/4r with storage blue:data beacon.value
execute store success score -.type blue.be.temp run function blue:be/check/type with storage blue:data beacon.value
function blue:be/check/typecount with storage blue:data beacon.value
execute unless score -.1range blue.be.temp matches 0 unless score -.1duration blue.be.temp matches 1 unless score -.2range blue.be.temp matches 0 unless score -.2duration blue.be.temp matches 1 unless score -.3range blue.be.temp matches 0 unless score -.3duration blue.be.temp matches 1 unless score -.4range blue.be.temp matches 0 unless score -.4duration blue.be.temp matches 1 unless score -.frequency blue.be.temp matches 1 if score -.particles blue.be.temp matches 1 unless score -.type blue.be.temp matches 0 unless score -.typeCount blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"All settings should be functional","color":"#1C85D6"}]
execute if score -.type blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"type","color":"red"}]
execute unless score -.type blue.be.temp matches 0 if score -.typeCount blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"\"type\" setting has a proper name, but no entities matched the tag, which could mean it was named improperly.","color":"#1C85D6"}]
execute if score -.frequency blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"frequency","color":"red"}]
execute unless score -.particles blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"hideParticles","color":"red"}]
execute if score -.1range blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl1Range","color":"red"}]
execute if score -.1duration blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl1Duration","color":"red"}]
execute if score -.2range blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl2Range","color":"red"}]
execute if score -.2duration blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl2Duration","color":"red"}]
execute if score -.3range blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl3Range","color":"red"}]
execute if score -.3duration blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl3Duration","color":"red"}]
execute if score -.4range blue.be.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl4Range","color":"red"}]
execute if score -.4duration blue.be.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with ","color":"#1C85D6"},{"text":"lvl4Duration","color":"red"}]
data remove storage blue:data beacon.value.check
scoreboard objectives remove blue.be.temp
playsound entity.chicken.egg player @s ~ ~ ~ 1 0.5