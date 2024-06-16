scoreboard objectives add blue_b.check.temp dummy
execute store result score -.temp blue_b.check.temp run data get storage blue:beacon main.lvl1Duration
execute if score -.temp blue_b.check.temp matches ..0 run scoreboard players set -.1duration blue_b.check.temp 1
execute store result storage blue:beacon main.check.temp int 1 run scoreboard players get -.temp blue_b.check.temp
execute unless score -.temp blue_b.check.temp matches ..0 store success score -.1duration blue_b.check.temp run data modify storage blue:beacon main.check.temp set from storage blue:beacon main.lvl1Duration
execute unless data storage blue:beacon main.lvl1Duration run scoreboard players set -.1duration blue_b.check.temp 1
execute store result score -.temp blue_b.check.temp run data get storage blue:beacon main.lvl2Duration
execute if score -.temp blue_b.check.temp matches ..0 run scoreboard players set -.2duration blue_b.check.temp 1
execute store result storage blue:beacon main.check.temp int 1 run scoreboard players get -.temp blue_b.check.temp
execute unless score -.temp blue_b.check.temp matches ..0 store success score -.2duration blue_b.check.temp run data modify storage blue:beacon main.check.temp set from storage blue:beacon main.lvl2Duration
execute unless data storage blue:beacon main.lvl2Duration run scoreboard players set -.2duration blue_b.check.temp 1
execute store result score -.temp blue_b.check.temp run data get storage blue:beacon main.lvl3Duration
execute if score -.temp blue_b.check.temp matches ..0 run scoreboard players set -.3duration blue_b.check.temp 1
execute store result storage blue:beacon main.check.temp int 1 run scoreboard players get -.temp blue_b.check.temp
execute unless score -.temp blue_b.check.temp matches ..0 store success score -.3duration blue_b.check.temp run data modify storage blue:beacon main.check.temp set from storage blue:beacon main.lvl3Duration
execute unless data storage blue:beacon main.lvl3Duration run scoreboard players set -.3duration blue_b.check.temp 1
execute store result score -.temp blue_b.check.temp run data get storage blue:beacon main.lvl4Duration
execute if score -.temp blue_b.check.temp matches ..0 run scoreboard players set -.4duration blue_b.check.temp 1
execute store result storage blue:beacon main.check.temp int 1 run scoreboard players get -.temp blue_b.check.temp
execute unless score -.temp blue_b.check.temp matches ..0 store success score -.4duration blue_b.check.temp run data modify storage blue:beacon main.check.temp set from storage blue:beacon main.lvl4Duration
execute unless data storage blue:beacon main.lvl4Duration run scoreboard players set -.4duration blue_b.check.temp 1
execute store result score -.temp blue_b.check.temp run data get storage blue:beacon main.frequency.ticks
execute if score -.temp blue_b.check.temp matches ..0 run scoreboard players set -.frequency blue_b.check.temp 1
execute store result storage blue:beacon main.check.temp int 1 run scoreboard players get -.temp blue_b.check.temp
execute unless score -.temp blue_b.check.temp matches ..0 store success score -.frequency blue_b.check.temp run data modify storage blue:beacon main.check.temp set from storage blue:beacon main.frequency.ticks
execute unless data storage blue:beacon main.frequency.ticks run scoreboard players set -.frequency blue_b.check.temp 1
execute if data storage blue:beacon main{hideParticles:"true"} run scoreboard players set -.particles blue_b.check.temp 1
execute if data storage blue:beacon main{hideParticles:"false"} run scoreboard players set -.particles blue_b.check.temp 1
execute store success score -.1range blue_b.check.temp run function blue_b:check/1r with storage blue:beacon main
execute store success score -.2range blue_b.check.temp run function blue_b:check/2r with storage blue:beacon main
execute store success score -.3range blue_b.check.temp run function blue_b:check/3r with storage blue:beacon main
execute store success score -.4range blue_b.check.temp run function blue_b:check/4r with storage blue:beacon main
execute store success score -.type blue_b.check.temp run function blue_b:check/type with storage blue:beacon main
function blue_b:check/typecount with storage blue:beacon main
execute unless score -.1range blue_b.check.temp matches 0 unless score -.1duration blue_b.check.temp matches 1 unless score -.2range blue_b.check.temp matches 0 unless score -.2duration blue_b.check.temp matches 1 unless score -.3range blue_b.check.temp matches 0 unless score -.3duration blue_b.check.temp matches 1 unless score -.4range blue_b.check.temp matches 0 unless score -.4duration blue_b.check.temp matches 1 unless score -.frequency blue_b.check.temp matches 1 if score -.particles blue_b.check.temp matches 1 unless score -.type blue_b.check.temp matches 0 unless score -.typeCount blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"All settings should be functional","color":"dark_aqua"}]
execute if score -.type blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"type\"","color":"dark_aqua"}]
execute unless score -.type blue_b.check.temp matches 0 if score -.typeCount blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"\"type\" setting has a proper name, but no entities matched the tag, which could mean it was named improperly.","color":"dark_aqua"}]
execute if score -.frequency blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"frequency\"","color":"dark_aqua"}]
execute unless score -.particles blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"hideParticles\"","color":"dark_aqua"}]
execute if score -.1range blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl1Range\"","color":"dark_aqua"}]
execute if score -.1duration blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl1Duration\"","color":"dark_aqua"}]
execute if score -.2range blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl2Range\"","color":"dark_aqua"}]
execute if score -.2duration blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl2Duration\"","color":"dark_aqua"}]
execute if score -.3range blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl3Range\"","color":"dark_aqua"}]
execute if score -.3duration blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl3Duration\"","color":"dark_aqua"}]
execute if score -.4range blue_b.check.temp matches 0 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl4Range\"","color":"dark_aqua"}]
execute if score -.4duration blue_b.check.temp matches 1 run tellraw @s [{"text":"- ","color":"gray"},{"text":"An error has occured with \"lvl4Duration\"","color":"dark_aqua"}]
data remove storage blue:beacon main.check
scoreboard objectives remove blue_b.check.temp
playsound entity.chicken.egg player @s ~ ~ ~ 1 0.5