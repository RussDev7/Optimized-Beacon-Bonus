summon marker ~ ~ ~ {UUID:[I;5512,566,22,6]}
scoreboard objectives add blue_b.check.temp dummy
scoreboard players set -.type blue_b.check.temp 1
execute store success score -.1range blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/1r with storage blue:beacon main
execute store success score -.1duration blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/1d with storage blue:beacon main
execute store success score -.2range blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/2r with storage blue:beacon main
execute store success score -.2duration blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/2d with storage blue:beacon main
execute store success score -.3range blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/3r with storage blue:beacon main
execute store success score -.3duration blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/3d with storage blue:beacon main
execute store success score -.4range blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/4r with storage blue:beacon main
execute store success score -.4duration blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/4d with storage blue:beacon main
execute store success score -.frequency blue_b.check.temp run function blue_b:check/frequency with storage blue:beacon frequency
execute store success score -.particles blue_b.check.temp as 00001588-0000-0236-0000-001600000006 run function blue_b:check/particles with storage blue:beacon main
execute store success score -.type blue_b.check.temp run function blue_b:check/type with storage blue:beacon main
function blue_b:check/typecount with storage blue:beacon main
execute unless score -.1range blue_b.check.temp matches 0 unless score -.1duration blue_b.check.temp matches 0 unless score -.2range blue_b.check.temp matches 0 unless score -.2duration blue_b.check.temp matches 0 unless score -.3range blue_b.check.temp matches 0 unless score -.3duration blue_b.check.temp matches 0 unless score -.4range blue_b.check.temp matches 0 unless score -.4duration blue_b.check.temp matches 0 unless score -.frequency blue_b.check.temp matches 0 unless score -.particles blue_b.check.temp matches 0 unless score -.type blue_b.check.temp matches 0 if score -.typeCount blue_b.check.temp matches 1 run tellraw @s {"text":"All settings should be functional","color":"dark_aqua"}
execute if score -.type blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"type\" setting.","color":"dark_aqua"}
execute if score -.type blue_b.check.temp matches 1 if score -.typeCount blue_b.check.temp matches 0 run tellraw @s {"text":"\"type\" setting has a proper name, but no entities matched the tag, which could mean it was named improperly.","color":"dark_aqua"}
execute if score -.frequency blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"frequency\" setting.","color":"dark_aqua"}
execute if score -.particles blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"hideParticles\" setting.","color":"dark_aqua"}
execute if score -.1range blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl1Range\" setting.","color":"dark_aqua"}
execute if score -.1duration blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl1Duration\" setting.","color":"dark_aqua"}
execute if score -.2range blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl2Range\" setting.","color":"dark_aqua"}
execute if score -.2duration blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl2Duration\" setting.","color":"dark_aqua"}
execute if score -.3range blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl3Range\" setting.","color":"dark_aqua"}
execute if score -.3duration blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl3Duration\" setting.","color":"dark_aqua"}
execute if score -.4range blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl4Range\" setting.","color":"dark_aqua"}
execute if score -.4duration blue_b.check.temp matches 0 run tellraw @s {"text":"An error has occured with the \"lvl4Duration\" setting.","color":"dark_aqua"}
scoreboard objectives remove blue_b.check.temp
kill 00001588-0000-0236-0000-001600000006