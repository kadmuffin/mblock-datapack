function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

tellraw @s ["",{"text": " Nombre de la Canción: ","color": "gray"},{"selector": "@e[tag=z_pointer,limit=1]"}]
tellraw @s ["",{"text": " Velocidad de Lectura: ","color": "gray", "hoverEvent": {"action": "show_text","value": "Establece la velocidad de lectura para los datos/bloques."}}, {"text": "["}, {"text": "■ Lento ", "color": "green", "hoverEvent": {"action": "show_text","value": "Modo: §eLento\n\n¡Esto podría llevar algo de tiempo! Esta es la opción de mas liviana."},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = #maxMin sload_run"}}, {"text": "■ Medio ","color": "yellow", "hoverEvent": {"action": "show_text","value": "Modo: §6Medio\n\nEsta es la velocidad por defecto."},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = #maxDefault sload_run"}}, {"text": "■ Rápido ","color": "red", "hoverEvent": {"action": "show_text","value": "Modo: §cRápido\n\n¡Esta opción podría hacer que tu mundo se ralentice mientras se carga!"},"clickEvent": {"action": "run_command","value": "/scoreboard players operation maxRuns_x sload_run = song_xsize sload"}},{"text": "]"}]

function mblock:interface/utils/jump_line

execute if entity @e[tag=z_pointer,tag=!pause_load] run tellraw @s ["",{"text": " "},{"text": " ▶ Pausar", "color": "blue", "clickEvent": {"action": "run_command","value": "/tag @e[tag=z_pointer] add pause_load"}},{"text": "    "},{"text": "[x] Detener", "color": "light_purple", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]
execute if entity @e[tag=z_pointer,tag=pause_load] run tellraw @s ["",{"text": " "},{"text": " ▶ Continuar", "color": "gold", "clickEvent": {"action": "run_command","value": "/tag @e[tag=z_pointer] remove pause_load"}},{"text": "    "},{"text": "[x] Detener", "color": "light_purple", "clickEvent": {"action": "run_command","value": "/function song_load:method/cancel"}}]

function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
