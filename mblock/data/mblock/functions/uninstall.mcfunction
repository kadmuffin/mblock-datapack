execute as @e[tag=music_player] at @s run setblock ~ ~-1 ~ air destroy
execute as @e[tag=music_player] at @s run function mblock:objects/music_player/block/end
# Main Install file
scoreboard objectives remove _mbtmp
scoreboard objectives remove _mbtmp1
scoreboard objectives remove mb.menu.tmp
scoreboard objectives remove flying

# Area Parser folder
scoreboard objectives remove _aparse.tmp
scoreboard objectives remove _aparse.x
scoreboard objectives remove _aparse.z
scoreboard objectives remove _aparse.tmp1
scoreboard objectives remove _aparse.tmp2
scoreboard objectives remove _aparse.tmp3

scoreboard objectives remove aparse.xsize
scoreboard objectives remove aparse.ysize
scoreboard objectives remove aparse.zsize
scoreboard objectives remove aparse.dir
scoreboard objectives remove aparse.id

# Used to differentiate between the user and the entity on steps
scoreboard objectives remove mb.id

# Note Folder
scoreboard objectives remove mbn.sound
scoreboard objectives remove mbn.dir

# MusicPlayer folder
scoreboard objectives remove mb.floor
scoreboard objectives remove mb.sig.a
scoreboard objectives remove mb.sig.b
scoreboard objectives remove mb.bpm
scoreboard objectives remove mb.true_bpm
scoreboard objectives remove mb.bpm_accuracy
scoreboard objectives remove mb.max_accuracy
scoreboard objectives remove mb.dir
scoreboard objectives remove mb.travel
scoreboard objectives remove mb_x_pos
scoreboard objectives remove mb_z_pos
scoreboard objectives remove mb.id

# NoteWand folder
scoreboard objectives remove _rayc_tmp
scoreboard objectives remove carrot
scoreboard objectives remove sneak

# Interface folder
scoreboard objectives remove mb.menu.lang
scoreboard objectives remove mb.menu.page

scoreboard objectives remove mb.tp
scoreboard objectives remove mb.play
scoreboard objectives remove mb.stop
scoreboard objectives remove mb.bpm
scoreboard objectives remove mb.length
scoreboard objectives remove mb.height
scoreboard objectives remove mb.width
scoreboard objectives remove mb.tempo
scoreboard objectives remove mb.open
scoreboard objectives remove mb.reset_sound
scoreboard objectives remove mb.floor.id
scoreboard objectives remove mb.gb.box_speed

scoreboard objectives remove mb_x_pos
scoreboard objectives remove mb_y_pos
scoreboard objectives remove sload
scoreboard objectives remove sload_run
scoreboard objectives remove sload_tick
scoreboard objectives remove sload_tmp
scoreboard objectives remove sload_tmp2
scoreboard objectives remove sload_tmp3
scoreboard objectives remove sload_mov

scoreboard objectives remove mb.event
scoreboard objectives remove mb.floor

tellraw @a {"text":"MusicBlocks was uninstalled!", "color": "green"}
tellraw @a {"text": " * Remove the datapack from the datapacks folder.","color": "gray"}
tellraw @a {"text": "  OR ", "color": "gray"}
tellraw @a ["",{"text": " * Disable the datapack with: ","color": "gray"}, {"text":"/datapack disable", "color": "gold", "clickEvent":{"action":"suggest_command","value":"/datapack disable"}}]
kill @e[tag=note_player]
kill @e[tag=z_step]
kill @e[tag=y_step]
kill @e[tag=_block]
kill @e[tag=_note]

tag @a remove player
tag @a remove __menu
tag @a remove sload_menu