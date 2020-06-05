#execute unless score @s mb.menu.lang matches 1.. run function mblock:objects/music_player/plugins/tellraw_menu/langs/english/main

execute if score @s mb.menu.lang matches 1 run function mblock:objects/music_player/plugins/tellraw_menu/langs/spanish/main










# execute as @a[tag=__menu,tag=!page_2] at @s unless score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":" BPM","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb.bpm matches 10.. run function mblock:objects/music_player/plugins/tellraw_menu/bpm_down"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"mb.bpm"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb.bpm matches ..385 run function mblock:objects/music_player/plugins/tellraw_menu/bpm_up"}},{"text":"\n"},{"text":" Travel Dist","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.zsize matches 2.. run scoreboard players remove @s aparse.zsize 1"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.zsize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run scoreboard players add @s aparse.zsize 1"}},{"text":"\n"},{"text":" Max Height","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.ysize matches 3.. run scoreboard players remove @s aparse.ysize 1"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.ysize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.ysize matches ..15 run scoreboard players add @s aparse.ysize 1"}},{"text":"\n"},{"text":" Area Length","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0 ","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.xsize matches 2.. run scoreboard players remove @s aparse.xsize 1"}},{"text":"[","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.xsize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.xsize matches ..8 run scoreboard players add @s aparse.xsize 1"}},{"text":"\n\nNext Page: ","color":"gray"},{"text":"[>>>]   ","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add page_2"}},{"text":"[>X<]  ","color":"gray","clickEvent":{"action":"run_command","value":"/function mblock:objects/music_player/plugins/tellraw_menu/clear_chat"}},{"text":"\n\n"},{"text":"[>Force Update<]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"This will force an update of all values, including size. \n\nThe Travel Distance may not be accurate after forcing an update."},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run function mblock:objects/music_player/plugins/tellraw_menu/force_update"}},{"text":"  [>Play Song<]  ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 run function mblock:objects/music_player/plugins/note_player/summon_player"}},{"text":"\n\n"},{"text":"                             [>Stop<]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 run function mblock:objects/music_player/plugins/tellraw_menu/kill_player"}},{"text":"\n"},{"text":"\n"},{"text":"------------------","color":"gray"}]
# execute as @a[tag=__menu,tag=page_2] at @s unless score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":"Show Area","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true,"color":"gold"},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_area"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_area"}},{"text":"\n"},{"text":"Show Top Lines","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_top"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_top"}},{"text":"\n"},{"text":"Player Interaction\nwith MusicBlocks","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add player"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove player"}},{"text":"\n"},{"text":"Get NoteWand","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Press Here","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @p run function mblock:objects/note_wand/get_wand"}},{"text":"\n\n"},{"text":"Last Page: ","color":"gray"},{"text":"[<<<]  ","clickEvent":{"action":"run_command","value":"/tag @s remove page_2"}},{"text":"------------------","color":"gray"}]
# execute as @a[tag=__menu,tag=page_2] at @s unless score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":"Show Area","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true,"color":"gold"},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_area"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_area"}},{"text":"\n"},{"text":"Show Top Lines","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_top"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_top"}},{"text":"\n"},{"text":"Player Interaction\nwith MusicBlocks","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add player"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove player"}},{"text":"\n"},{"text":"Get NoteWand","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Press Here","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @p run function mblock:objects/note_wand/get_wand"}},{"text":"\n\n"},{"text":"Last Page: ","color":"gray"},{"text":"[<<<]  ","clickEvent":{"action":"run_command","value":"/tag @s remove page_2"}},{"text":"------------------","color":"gray"}]
# execute as @a[tag=__menu,tag=page_2] at @s unless score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":"Show Area","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true,"color":"gold"},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_area"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_area"}},{"text":"\n"},{"text":"Show Top Lines","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_top"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_top"}},{"text":"\n"},{"text":"Player Interaction\nwith MusicBlocks","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add player"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove player"}},{"text":"\n"},{"text":"Get NoteWand","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Press Here","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @p run function mblock:objects/note_wand/get_wand"}},{"text":"\n\n"},{"text":"Last Page: ","color":"gray"},{"text":"[<<<]  ","clickEvent":{"action":"run_command","value":"/tag @s remove page_2"}},{"text":"------------------","color":"gray"}]
# execute as @a[tag=__menu,tag=page_2] at @s unless score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":"Show Area","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true,"color":"gold"},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_area"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_area"}},{"text":"\n"},{"text":"Show Top Lines","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_top"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_top"}},{"text":"\n"},{"text":"Disable Song Overwrite","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add disable_overwrite"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove disable_overwrite"}},{"text":"\n"},{"text":"Replace only \n Air on Notes Paste","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add disable_overwrite_on_write"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove disable_overwrite_on_write"}},{"text":"\n"},{"text":"Disable Song Redirection","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add disable_redirection"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove disable_redirection"}},{"text":"\n"},{"text":"Force Direction on Paste","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Enable","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add disable_redirection_on_write"}},{"text":"/","color":"dark_gray"},{"text":"Disable","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove disable_redirection_on_write"}},{"text":"\n\n"},{"text":"Last Page: ","color":"gray"},{"text":"[<<<]  ","clickEvent":{"action":"run_command","value":"/tag @s remove page_2"}},{"text":"------------------","color":"gray"}]

# execute as @a[tag=__menu,tag=!page_2] at @s if score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":" BPM","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb.bpm matches 10.. run function mblock:objects/music_player/plugins/tellraw_menu/bpm_down"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"mb.bpm"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s mb.bpm matches ..385 run function mblock:objects/music_player/plugins/tellraw_menu/bpm_up"}},{"text":"\n"},{"text":" Distacia a Viajar","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.zsize matches 2.. run scoreboard players remove @s aparse.zsize 1"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.zsize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run scoreboard players add @s aparse.zsize 1"}},{"text":"\n"},{"text":" Altura del Area","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.ysize matches 2.. run scoreboard players remove @s aparse.ysize 1"}},{"text":" [","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.ysize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.ysize matches ..15 run scoreboard players add @s aparse.ysize 1"}},{"text":"\n"},{"text":" Largo del Area","bold":true,"color":"gold"},{"text":": ","color":"gray"},{"text":"\u25c0 ","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.xsize matches 2.. run scoreboard players remove @s aparse.xsize 1"}},{"text":"[","color":"gray"},{"score":{"name":"@e[tag=music_player,sort=nearest,limit=1]","objective":"aparse.xsize"},"color":"gray"},{"text":"] ","color":"gray"},{"text":"\u25b6","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] if score @s aparse.xsize matches ..8 run scoreboard players add @s aparse.xsize 1"}},{"text":"\n\nSiguiente Pagina: ","color":"gray"},{"text":"[>>>]   ","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add page_2"}},{"text":"[>X<]  ","color":"gray","clickEvent":{"action":"run_command","value":"/function mblock:objects/music_player/plugins/tellraw_menu/clear_chat"}},{"text":"\n\n"},{"text":"[>Forzar Act.<]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Esto va a forzar una actualizacion de los valores, incluido el tamaño. \n\nLa Distacia Viajada podria no ser precisa despues de una actualizacion forzada."},"clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run function mblock:objects/music_player/plugins/tellraw_menu/force_update"}},{"text":"  [>Reproducir<]  ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 run function mblock:objects/music_player/plugins/note_player/summon_player"}},{"text":"\n\n"},{"text":"                          [>Parar<]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 run function mblock:objects/music_player/plugins/tellraw_menu/kill_player"}},{"text":"\n"},{"text":"\n"},{"text":"------------------","color":"gray"}]
# execute as @a[tag=__menu,tag=page_2] at @s if score @s mb_player matches 2 run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"------------------","color":"gray"},{"text":"\n"},{"text":"Mostrar Area","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true,"color":"gold"},{"text":"Activar","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_area"}},{"text":"/","color":"dark_gray"},{"text":"Desactivar","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_area"}},{"text":"\n"},{"text":"Mostrar Bordes","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" ","bold":true},{"text":"Activar","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s add show_top"}},{"text":"/","color":"dark_gray"},{"text":"Desactivar","color":"red","clickEvent":{"action":"run_command","value":"/execute as @e[tag=music_player,sort=nearest,limit=1] run tag @s remove show_top"}},{"text":"\n"},{"text":"Interaccion del jugador\n con MusicBlocks","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Activar","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add player"}},{"text":"/","color":"dark_gray"},{"text":"Desactivar","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove player"}},{"text":"\n"},{"text":"Obtener Caña","bold":true,"color":"gold"},{"text":":","color":"dark_gray"},{"text":" "},{"text":"Press Here","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute as @p run function mblock:objects/note_wand/get_wand"}},{"text":"\n\n"},{"text":"Last Page: ","color":"gray"},{"text":"[<<<]  ","clickEvent":{"action":"run_command","value":"/tag @s remove page_2"}},{"text":"------------------","color":"gray"}]
