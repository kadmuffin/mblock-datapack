execute store result score @s[tag=!opened] _plushieTMP2 run gamerule sendCommandFeedback

execute if score @s[tag=!opened] _plushieTMP2 matches 1 run tag @s add sendFeedback
execute if score @s[tag=!opened] _plushieTMP2 matches 1 run gamerule sendCommandFeedback false

scoreboard players reset @s[tag=!opened] _plushieTMP2

tag @s[tag=!opened] add opened
playsound minecraft:ui.loom.take_result neutral @s[tag=!menu] ~ ~ ~ 0.2 1.85
tag @s[tag=!menu] add menu
tag @a[tag=!showNatural,tag=!showCustom] add showNatural
function plushiemenu:utils/interface