function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s[tag=load_question] {"text": "¿Quiere cargar esta canción?","color": "gray"}
tellraw @s[tag=save_question] {"text": "¿Quiere guardar esta canción?","color": "gray"}

function mblock:interface/utils/jump_line

tellraw @s ["",{"text": " - ","color": "green"},{"selector": "@e[tag=z_pointer,limit=1]"}, {"text": " [X: ", "color": "blue"}, {"score": {"objective": "sload", "name": "song_xsize"},"color": "gold"},{"text": ", Y: ", "color": "blue"},{"score": {"objective": "sload", "name": "song_ysize"},"color": "gold"},{"text": ", Z: ","color": "blue"},{"score": {"objective": "sload", "name": "song_length"},"color": "gold"}, {"text": "]","color": "blue"}]

function mblock:interface/utils/jump_line

tellraw @s[tag=load_question] ["",{"text": " "},{"text": "[Cargar]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_load"}},{"text": "  "},{"text": "[Cancelar]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
tellraw @s[tag=save_question] ["",{"text": " "},{"text": "[Guardar]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_save"}},{"text": "  "},{"text": "[Cancelar]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]

function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
