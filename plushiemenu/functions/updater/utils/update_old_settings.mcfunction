execute if entity @a[tag=PlushiesAccuracyMode] run scoreboard players set CORE _plushieSettings 0
execute if entity @a[tag=PlushiesAccuracyMode] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Accuracy Core → Acuracy Mode ","color":"yellow"},{"text":"{Legacy}.","color":"gold"}]
execute if entity @a[tag=PlushiesAccuracyMode] run tag @a remove PlushiesAccuracyMode

execute if entity @a[tag=PlushiesBalancedMode] run scoreboard players set CORE _plushieSettings 0
execute if entity @a[tag=PlushiesBalancedMode] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" (REMOVED) Intelligent Core → Acuracy Mode ","color":"yellow"},{"text":"{Legacy}.","color":"gold"}]
execute if entity @a[tag=PlushiesBalancedMode] run tag @a remove PlushiesBalancedMode

execute if entity @a[tag=PlushiesOriginalLoop] run scoreboard players set CORE _plushieSettings 0
execute if entity @a[tag=PlushiesOriginalLoop] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" (REMOVED) Original Core → Acuracy Mode ","color":"yellow"},{"text":"{Legacy}.","color":"gold"}]
execute if entity @a[tag=PlushiesOriginalLoop] run tag @a remove PlushiesOriginalLoop

execute if entity @a[tag=PlushiesPerformanceMode] run scoreboard players set CORE _plushieSettings 2
execute if entity @a[tag=PlushiesPerformanceMode] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Performance Core → Performance Mode ","color":"yellow"},{"text":"{Legacy}.","color":"gold"}]
execute if entity @a[tag=PlushiesPerformanceMode] run tag @a remove PlushiesPerformanceMode

execute if entity @a[tag=PlushiesPerformanceMode2] run scoreboard players set CORE _plushieSettings 2
execute if entity @a[tag=PlushiesPerformanceMode2] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Performance Core v2.1 → Performance Mode ","color":"yellow"},{"text":"{Legacy}.","color":"gold"}]
execute if entity @a[tag=PlushiesPerformanceMode2] run tag @a remove PlushiesPerformanceMode2

execute if entity @a[tag=PlushiesExperimentalMode] run scoreboard players set CORE _plushieSettings 3
execute if entity @a[tag=PlushiesExperimentalMode] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Experimental Core → Default Mode ","color":"yellow"}]
execute if entity @a[tag=PlushiesExperimentalMode] run tag @a remove PlushiesExperimentalMode

execute if entity @a[tag=PlushiesGeneration] run scoreboard players set NATURALGEN _plushieSettings 1
execute if entity @a[tag=PlushiesGeneration] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Plushies Generation through Wolf.","color":"yellow"}]
execute if entity @a[tag=PlushiesGeneration] run tag @a remove PlushiesGeneration

execute if entity @a[tag=CustomGeneration] run scoreboard players set CUSTOMGEN _plushieSettings 1
execute if entity @a[tag=CustomGeneration] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Plushies Generation through Custom Mobs.","color":"yellow"}]
execute if entity @a[tag=CustomGeneration] run tag @a remove CustomGeneration

execute if entity @a[tag=lowRate] run scoreboard players set RATE _plushieSettings 0
execute if entity @a[tag=lowRate] run scoreboard players set RATE_C _plushieSettings 0
execute if entity @a[tag=lowRate] run tag @a remove lowRate

execute if entity @a[tag=middleRate] run scoreboard players set RATE _plushieSettings 1
execute if entity @a[tag=middleRate] run scoreboard players set RATE_C _plushieSettings 1
execute if entity @a[tag=middleRate] run tag @a remove middleRate

execute if entity @a[tag=highRate] run scoreboard players set RATE _plushieSettings 2
execute if entity @a[tag=highRate] run scoreboard players set RATE_C _plushieSettings 2
execute if entity @a[tag=highRate] run tag @a remove highRate

execute if entity @a[tag=extremeRate] run scoreboard players set RATE _plushieSettings 3
execute if entity @a[tag=extremeRate] run scoreboard players set RATE_C _plushieSettings 2
execute if entity @a[tag=extremeRate] run tag @a remove extremeRate
