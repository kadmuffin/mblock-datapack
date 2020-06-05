scoreboard players set DEFAULT_SETUP _plushieSettings 0
scoreboard players set INSTANT_KILL _plushieSettings 0
scoreboard players set EXTEND_RANGE _plushieSettings 0
scoreboard players set SKILLS_LOOP _plushieSettings 1
scoreboard players set DAMAGE_WORLD _plushieSettings 0
tag @a remove devShowLoop
function plushiemenu:commands/close_menu
playsound minecraft:ui.loom.select_pattern neutral @s[tag=menu] ~ ~ ~ 0.2 1.2
reload
