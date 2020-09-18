function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s ["",{"text": " Task Name: ","color": "gray"},{"selector": "@e[tag=z_pointer,limit=1]"}]
tellraw @s ["",{"text": " Read Speed: ","color": "gray", "hoverEvent": {"action": "show_text","value": "Sets the read speed for data/blocks."}}, {"text": "["}, {"text": "■ Slow ", "color": "green", "hoverEvent": {"action": "show_text","value": "Mode: §eSlow\n\nThis could take some time!, This is the lightest option."},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = #maxMin sload_run"}}, {"text": "■ Medium ","color": "yellow", "hoverEvent": {"action": "show_text","value": "Mode: §6Medium\n\nThis is the default speed."},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = #maxDefault sload_run"}}, {"text": "■ Fast ","color": "red", "hoverEvent": {"action": "show_text","value": "Mode: §cFast\n\nThis option could make your world slow while loading!"},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = song_xsize sload"}},{"text": "]"}]

function mblock:interface/utils/jump_line

execute if entity @e[tag=z_pointer,tag=!pause_load] run tellraw @s ["",{"text": " "},{"text": " ▶ Pause", "color": "blue", "clickEvent": {"action": "run_command","value": "/tag @e[tag=z_pointer] add pause_process"}},{"text": "    "},{"text": "[x] Stop", "color": "light_purple", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
execute if entity @e[tag=z_pointer,tag=pause_load] run tellraw @s ["",{"text": " "},{"text": " ▶ Continue", "color": "gold", "clickEvent": {"action": "run_command","value": "/tag @e[tag=z_pointer] remove pause_process"}},{"text": "    "},{"text": "[x] Stop", "color": "light_purple", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]


function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
