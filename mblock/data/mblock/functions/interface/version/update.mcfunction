function mblock:interface/version/messages/update

execute if entity @a run scoreboard players operation #version_x _mbtmp = #version_x_tmp _mbtmp
execute if entity @a run scoreboard players operation #version_y _mbtmp = #version_y_tmp _mbtmp
execute if entity @a run scoreboard players operation #version_z _mbtmp = #version_z_tmp _mbtmp
scoreboard players set #version_test _mbtmp 0

kill @e[tag=note_player]
kill @e[tag=_note]
kill @e[tag=_block]