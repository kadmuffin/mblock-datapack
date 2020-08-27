tag @s add _bpm_player
execute as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=show_top] run tag @e[tag=_bpm_player] add show_top

tellraw @s[tag=!show_top] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_on"}}, {"text": " "}, {"text": "Show Ceiling", "color": "gray", "hoverEvent": {"action": "show_text", "value": "Show the Ceiling of the box.\n\n§9Performance Impact: §aMedium."}}]
tellraw @s[tag=show_top] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "◆", "color": "green", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/top_off"}}, {"text": " "}, {"text": "Show Ceiling", "color": "gray", "hoverEvent": {"action": "show_text", "value": "Show the Ceiling of the box.\n\n§9Performance Impact: §aMedium."}}]

tag @s remove _bpm_player
tag @s remove show_top
