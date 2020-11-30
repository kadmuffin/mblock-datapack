execute as @s[tag=show_signature] run function bpm_addon:utils/get_signature
execute as @s[tag=!show_signature] if entity @a[distance=0..3] run function bpm_addon:utils/get_signature
execute if entity @a[distance=0..3] unless entity @e[tag=bpm_addon_show,distance=0..2] run function bpm_addon:box/display_settings
tag @s remove valid_signature