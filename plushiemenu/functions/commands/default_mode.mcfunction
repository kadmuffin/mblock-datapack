scoreboard players set CORE _plushieSettings 3
tellraw @a ["",{"text":"["},{"text":"Plushie","color":"gold"},{"text":"Wolf","color":"dark_gray"},{"text":"]"},{"text":" Default-Mode Selected!, Restarting Datapack...", "color": "green"}]
playsound minecraft:ui.loom.select_pattern neutral @s ~ ~ ~ 0.2 1.75
reload
playsound minecraft:ui.loom.take_result neutral @s ~ ~ ~ 0.2 2