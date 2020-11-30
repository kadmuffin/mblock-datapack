tag @s add _bpm_player
execute as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=show_signature] run tag @e[tag=_bpm_player] add show_signature

execute if entity @e[tag=music_player,sort=nearest,limit=1] run tellraw @s[tag=!show_signature] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": " "}, {"text": "Show Time Signature", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_on"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Shows the Time Signature on the floor.\n\n§9Set the Signature\non the §a\"More Settings\" §9Tab."}}]
tellraw @s[tag=show_signature] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "◆", "color": "green", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": " "}, {"text": "Show Time Signature", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/sig_off"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Shows the Time Signature on the floor.\n\n§9Set the Signature\non the §a\"More Settings\" §9Tab."}}]

tag @s remove _bpm_player
tag @s remove show_signature