tellraw @s ["",{"text":"--","color":"dark_aqua"},{"text":"(1)","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Hover over any text to get more information about it, like the rest of this line."}},{"text":"--","color":"dark_aqua"},{"text":"(2)","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Click on any text to automatically type it into chat, with the value being set to the vanilla default (excluding particles)"}},{"text":"--","color":"dark_aqua"},{"text":"(3)","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"These settings only affect the range, duration, type, particles, etc, of the effects when they're applied by this datapack, they won't impact vanilla. They will, however immediately change every beacon, even if its not loaded."}},{"text":"--","color":"dark_aqua"},{"text":"(4)","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"for the \"lvl...\" settings, you can just change the number in the name for the beacon level (ex; \"main.lvl1Range\", \"main.lvl3Duration\", \"main.lvl4Range\")"}},{"text":"--","color":"dark_aqua"},{"text":"(5)","bold":true,"color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/function blue_b:check_settings"},"hoverEvent":{"action":"show_text","contents":"You can run \"/function blue_b:check_settings\" to check if any of the settings will cause the effects to not work."}},{"text":"--","color":"dark_aqua"},{"text":"(6)","bold":true,"color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/function blue_b:quick_find"},"hoverEvent":{"action":"show_text","contents":"Click here to constantly check for beacons infront of all players for 15 seconds, aka \"/function blue_b:quick_find\""}},{"text":"--","color":"dark_aqua"},{"text":"(7)","bold":true,"color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/function blue_b:default_values"},"hoverEvent":{"action":"show_text","contents":"Click here to get another message of all the default values, won't be as short."}},{"text":"--","color":"dark_aqua"},{"text":"(8)","color":"dark_aqua","bold":true,"clickEvent":{"action":"suggest_command","value":"/function blue_b:set_default"},"hoverEvent":{"action":"show_text","contents":"Click here to set all values back to their default"}},{"text":"--\n- ","color":"dark_aqua"},{"text":"schedule clear blue_b:repeat","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/schedule clear blue_b:repeat"},"hoverEvent":{"action":"show_text","contents":"Disables beacons from giving their effects (through this datapack)"}},{"text":"\n- ","color":"dark_aqua"},{"text":"function blue_b:repeat","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/function blue_b:repeat"},"hoverEvent":{"action":"show_text","contents":"Enables beacons to give their effects through this datapack. (On by default, usually)"}},{"text":"\n- ","color":"dark_aqua"},{"text":"blue:beacon main.type","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage blue:beacon main.type set value \"peaceful\""},"hoverEvent":{"action":"show_text","contents":"Determines which preset of entities to use. Available options: \"peaceful\" , \"breedable\" , \"tameable\" , \"peaceful_player\" , \"player\" , \"hostiles\""}},{"text":"\n- ","color":"dark_aqua"},{"text":"blue:beacon main.lvl1Range","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage blue:beacon main.lvl1Range set value 20"},"hoverEvent":{"action":"show_text","contents":"Modifies the range of all level 1 beacons. The range is in blocks, but it does support decimals."}},{"text":"\n- ","color":"dark_aqua"},{"text":"blue:beacon main.lvl1Duration","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage blue:beacon main.lvl1Duration set value 11"},"hoverEvent":{"action":"show_text","contents":"Modifies the duration granted by level 1 beacons, its in seconds and decimals will break it"}},{"text":"\n- ","color":"dark_aqua"},{"text":"blue:beacon main.hideParticles","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage blue:beacon main.hideParticles set value \"true\""},"hoverEvent":{"action":"show_text","contents":"Chooses if entities should hide the particles of effects given by this datapack, on by default"}},{"text":"\n- ","color":"dark_aqua"},{"text":"blue:beacon main.frequency.ticks","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage blue:beacon main.frequency.ticks set value 80"},"hoverEvent":{"action":"show_text","contents":"Chooses how frequently beacons should give effects in ticks (20 ticks is a second)"}},{"text":"\nIf you still need help, join ","color":"dark_aqua"},{"text":"discord.gg/3Pj7GszXPM","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.com/invite/3Pj7GszXPM"},"hoverEvent":{"action":"show_text","contents":"Opens the link to Blue's discord server"}},{"text":"\n--------------------------------------","color":"dark_aqua"}]