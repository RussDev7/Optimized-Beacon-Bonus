$execute if entity @e[type=#blue:ub/$(type),limit=1] run scoreboard players set -.typeCount blue.ub.temp 1
$execute unless entity @e[type=#blue:ub/$(type),limit=1] run scoreboard players set -.typeCount blue.ub.temp 0