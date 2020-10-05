function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s[tag=load_question] {"text": "Do you want to load this song?","color": "gray"}
tellraw @s[tag=save_question] {"text": "Do you want to save this song?","color": "gray"}

function mblock:interface/utils/jump_line

tellraw @s ["",{"text": " - ","color": "green"},{"selector": "@e[tag=z_pointer,limit=1]"}, {"text": " [X: ", "color": "blue"}, {"score": {"objective": "sload", "name": "song_xsize"},"color": "gold"},{"text": ", Y: ", "color": "blue"},{"score": {"objective": "sload", "name": "song_ysize"},"color": "gold"},{"text": ", Z: ","color": "blue"},{"score": {"objective": "sload", "name": "song_length"},"color": "gold"}, {"text": "]","color": "blue"}]

function mblock:interface/utils/jump_line

tellraw @s[tag=save_question,tag=no_optimization] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": " "}, {"text": "Optimize Save", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Removes unused air blocks when possible §a(WIP)§r.\n\n§9Loading Time is improved when turn on."}}]
tellraw @s[tag=save_question,tag=!no_optimization] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOn"}}, {"text": "◆", "color": "green", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": " "}, {"text": "Optimize Save", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Removes unused air blocks when possible §a(WIP)§r.\n\n§9Loading Time is improved when turn on."}}]

execute as @s[tag=save_question] run function mblock:interface/utils/jump_line

tellraw @s[tag=load_question] ["",{"text": " "},{"text": "[Load]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_load"}},{"text": "  "},{"text": "[Cancel]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
tellraw @s[tag=save_question] ["",{"text": " "},{"text": "[Save]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_save"}},{"text": "  "},{"text": "[Cancel]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]


function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
