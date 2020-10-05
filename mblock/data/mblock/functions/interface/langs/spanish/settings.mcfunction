# ------------
#    title
function mblock:interface/utils/clear_chat
function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

execute if score #tmp mb.menu.tmp matches 0.. unless score #tmp mb.menu.tmp = @s mb.menu.tmp run playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75
execute if score #tmp mb.menu.lang matches 0.. unless score #tmp mb.menu.lang = @s mb.menu.lang run playsound block.dispenser.fail block @s ~ ~ ~ 0.8 1.75

scoreboard players operation #tmp mb.menu.tmp = @s mb.menu.tmp
scoreboard players operation #tmp mb.menu.lang = @s mb.menu.lang
scoreboard players operation #tmp mb.floor = @e[tag=music_player,sort=nearest,limit=1] mb.floor
scoreboard players operation #tmp mb.max_accuracy = @e[tag=music_player,sort=nearest,limit=1] mb.max_accuracy

tellraw @s {"text": "Lenguajes instalados", "color": "gold"}

function #mb_plugin:menu/langs

function mblock:interface/utils/jump_line

tellraw @s {"text": "Visualización de las notas", "color": "gold"}

# NoteBlock
execute if score @s mb.menu.tmp matches 1.. run tellraw @s ["", {"text": " [", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 0"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 0"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 0"}}, {"text": " "}, {"text": "Valor de NoteBlock", "color": "gray", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 0"}}]
execute unless score @s mb.menu.tmp matches 1.. run tellraw @s ["", {"text": " [", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "◆", "color": "green", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "]", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": " "}, {"text": "Valor de NoteBlock", "color": "gray"}]

# C,D,E
execute unless score @s mb.menu.tmp matches 1 run tellraw @s ["", {"text": " [", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 1"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 1"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 1"}}, {"text": " "}, {"text": "Notas C, D, E", "color": "gray", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 1"}}]
execute if score @s mb.menu.tmp matches 1 run tellraw @s ["", {"text": " [", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "◆", "color": "green", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "]", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": " "}, {"text": "Notas C, D, E", "color": "gray"}]

# Do,Re,Mi
execute unless score @s mb.menu.tmp matches 2 run tellraw @s ["", {"text": " [", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 2"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "◆", "color": "red", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 2"}, "hoverEvent": {"action": "show_text","value": "§eOff → §9On"}}, {"text": "]", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 2"}}, {"text": " "}, {"text": "Notas Do, Re, Mi", "color": "gray", "clickEvent": {"action": "run_command","value": "/scoreboard players set @s mb.menu.tmp 2"}}]
execute if score @s mb.menu.tmp matches 2 run tellraw @s ["", {"text": " [", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "◆", "color": "green", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": "]", "hoverEvent": {"action": "show_text","value": "§eSelected!"}}, {"text": " "}, {"text": "Notas Do, Re, Mi", "color": "gray"}]

function mblock:interface/utils/jump_line

tellraw @s {"text": "Ajustes locales", "color": "gold"}
execute if score #tmp mb.max_accuracy matches 4 run tellraw @s ["",{"text": " Precisión del BPM ", "color": "gray","hoverEvent": {"action": "show_text","value": "Establece la cantidad máxima de \nprecisión para el BPM.\n\n§9La precisión se ajustará en \nbase a la posición del bloque."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_remove"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" ["},{"text": " Auto ", "hoverEvent": {"action": "show_text","value": "§9Utiliza la más alta \nprecisión soportada."}, "color": "green"},{"text":"] "},{"text":" \u25b6 ","hoverEvent":{"action":"show_text","value":"+1"},"color": "dark_gray"}]
execute if score #tmp mb.max_accuracy matches 3 run tellraw @s ["",{"text": " Precisión del BPM ", "color": "gray","hoverEvent": {"action": "show_text","value": "Establece la cantidad máxima de \nprecisión para el BPM.\n\n§9La precisión se ajustará en \nbase a la posición del bloque."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_remove"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" ["},{"text": " Alto ", "hoverEvent": {"action": "show_text","value": "§9Posición máxima soportada:\n§5XZ: §610.000"}, "color": "green"},{"text":"] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_add"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score #tmp mb.max_accuracy matches 2 run tellraw @s ["",{"text": " Precisión del BPM ", "color": "gray","hoverEvent": {"action": "show_text","value": "Establece la cantidad máxima de \nprecisión para el BPM.\n\n§9La precisión se ajustará en \nbase a la posición del bloque."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_remove"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" ["},{"text": " Normal ", "hoverEvent": {"action": "show_text","value": "§9Posición máxima soportada:\n§5XZ: §6100.000"}, "color": "green"},{"text":"] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_add"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score #tmp mb.max_accuracy matches 1 run tellraw @s ["",{"text": " Precisión del BPM ", "color": "gray","hoverEvent": {"action": "show_text","value": "Establece la cantidad máxima de \nprecisión para el BPM.\n\n§9La precisión se ajustará en \nbase a la posición del bloque."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_remove"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" ["},{"text": " Medio ", "hoverEvent": {"action": "show_text","value": "§9Posición máxima soportada:\n§5XZ: §61.000.000"}, "color": "green"},{"text":"] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_add"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score #tmp mb.max_accuracy matches 0 run tellraw @s ["",{"text": " Precisión del BPM ", "color": "gray","hoverEvent": {"action": "show_text","value": "Establece la cantidad máxima de \nprecisión para el BPM.\n\n§9La precisión se ajustará en \nbase a la posición del bloque."}},{"text":" \u25c0 ","hoverEvent":{"action":"show_text","value":"-1"},"color": "dark_gray"},{"text":" ["},{"text": " Bajo ", "hoverEvent": {"action": "show_text","value": "§9Posición máxima soportada:\n§5XZ: §68.000.000"}, "color": "green"},{"text":"] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/accuracy_add"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if entity @e[tag=music_player,sort=nearest,limit=1] run tellraw @s ["",{"text": " Signatura de Compás ", "color": "gray","hoverEvent": {"action": "show_text","value": "Cambia la forma en que \nse deben contar los beats.\n\n§6Valor por defecto \n§a(Default: 4/4)§6."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/execute if score @e[tag=music_player,sort=nearest,limit=1] mb.sig.a matches 2.. run function mblock:interface/commands/settings/remove_sig_a"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [ "},{"score":{"objective":"mb.sig.a","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color": "green"},{"text":" ] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/add_sig_a"},"hoverEvent":{"action":"show_text","value":"+1"}},{"text": "  "},{"text": "/","color": "green"},{"text": "  "},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/execute if score @e[tag=music_player,sort=nearest,limit=1] mb.sig.b matches 2.. run function mblock:interface/commands/settings/remove_sig_b"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [ "},{"score":{"objective":"mb.sig.b","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color": "green"},{"text":" ] "},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/add_sig_b"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if entity @e[tag=music_player,sort=nearest,limit=1] run tellraw @s ["",{"text": " ID de Suelo ", "color": "gray","hoverEvent": {"action": "show_text","value": "Los IDs de Suelo cambian el bloque colocado en y: 0.\n\n§9Built-in Suelos:\n§6Default: §a0\n§6Grass Block: §a1\n§6Smooth Stone: §a2\n§6Stone Bricks: §a3\n§6Dark Prismarine: §a4"}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/execute if score @e[tag=music_player,sort=nearest,limit=1] mb.floor matches 1.. run function mblock:interface/commands/settings/floor_remove"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [ ","clickEvent": {"action": "suggest_command","value": "/trigger mb.floor.id set <id>"},"hoverEvent": {"action": "show_text","value": "Haga clic para cambiar manualmente las IDs."}},{"score":{"objective":"mb.floor","name":"@e[tag=music_player,sort=nearest,limit=1]"},"clickEvent": {"action": "suggest_command","value": "/trigger mb.floor.id set <id>"},"hoverEvent": {"action": "show_text","value": "Haga clic para cambiar manualmente las IDs."},"color": "green"},{"text":" ] ","clickEvent": {"action": "suggest_command","value": "/trigger mb.floor.id set <id>"},"hoverEvent": {"action": "show_text","value": "Haga clic para cambiar manualmente las IDs."}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/function mblock:interface/commands/settings/floor_add"},"hoverEvent":{"action":"show_text","value":"+1"}}]

function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
