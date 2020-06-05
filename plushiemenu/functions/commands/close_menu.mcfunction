tag @s remove menu
tag @s remove opened
tag @s remove showNatural
tag @s remove showCustom
tag @s remove showAdvanced
execute as @s[tag=sendFeedback] run gamerule sendCommandFeedback true
tag @s remove sendFeedback
function plushiemenu:utils/clear_chat
playsound minecraft:ui.loom.select_pattern neutral @s ~ ~ ~ 0.2 1.9
tag @s remove spawning_heads