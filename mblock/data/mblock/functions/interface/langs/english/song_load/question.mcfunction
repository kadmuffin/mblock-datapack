function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s[tag=load_question] {"text": "Do you want to load this song?","color": "gray"}
tellraw @s[tag=save_question] {"text": "Do you want to save this song?","color": "gray"}

function mblock:interface/utils/jump_line

tellraw @s ["",{"text": " - ","color": "green"},{"selector": "@e[tag=z_pointer,limit=1]"}, {"text": " [X: ", "color": "blue"}, {"score": {"objective": "sload", "name": "song_xsize"},"color": "gold"},{"text": ", Y: ", "color": "blue"},{"score": {"objective": "sload", "name": "song_ysize"},"color": "gold"},{"text": ", Z: ","color": "blue"},{"score": {"objective": "sload", "name": "song_length"},"color": "gold"}, {"text": "]","color": "blue"}]

function mblock:interface/utils/jump_line

tellraw @s[tag=load_question] ["",{"text": " "},{"text": "[Load]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_load"}},{"text": "  "},{"text": "[Cancel]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
tellraw @s[tag=save_question] ["",{"text": " "},{"text": "[Save]", "color": "green", "clickEvent": {"action": "run_command","value": "/function song_load:utils/method/continue_save"}},{"text": "  "},{"text": "[Cancel]", "color": "red", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]


function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
