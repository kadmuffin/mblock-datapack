function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s[tag=load_question] {"text": "¿Quiere cargar esta canción?","color": "gray"}
tellraw @s[tag=save_question] {"text": "¿Quiere guardar esta canción?","color": "gray"}

function mblock:interface/utils/jump_line

tellraw @s ["",{"text": " - ","color": "green"},{"selector": "@e[tag=z_pointer,limit=1]"}, {"text": " [X: ", "color": "blue"}, {"score": {"objective": "sload", "name": "song_xsize"},"color": "gold"},{"text": ", Y: ", "color": "blue"},{"score": {"objective": "sload", "name": "song_ysize"},"color": "gold"},{"text": ", Z: ","color": "blue"},{"score": {"objective": "sload", "name": "song_length"},"color": "gold"}, {"text": "]","color": "blue"}]

function mblock:interface/utils/jump_line

tellraw @s[tag=save_question,tag=no_optimization] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": " "}, {"text": "Optimizar Guardado", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_on"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Elimina los bloques de aire no utilizados \ncuando es posible §a(WIP)§r.\n\n§9El tiempo de carga se mejora cuando se activa."}}]
tellraw @s[tag=save_question,tag=!no_optimization] ["", {"text": "[", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOn"}}, {"text": "◆", "color": "green", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "hoverEvent": {"action": "show_text","value": "§9On → §eOff"}}, {"text": " "}, {"text": "Optimizar Guardado", "clickEvent": {"action": "run_command","value": "/function mblock:interface/commands/save_opt_off"}, "color": "gray", "hoverEvent": {"action": "show_text", "value": "Elimina los bloques de aire no utilizados \ncuando es posible §a(WIP)§r.\n\n§9El tiempo de carga se mejora cuando se activa."}}]

execute as @s[tag=save_question] run function mblock:interface/utils/jump_line

tellraw @s[tag=load_question] ["",{"text": " "},{"text": "[Cargar]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_load"}},{"text": "  "},{"text": "[Cancelar]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
tellraw @s[tag=save_question] ["",{"text": " "},{"text": "[Guardar]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_save"}},{"text": "  "},{"text": "[Cancelar]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]

function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
