kill @e[tag=xyz_pointers]

bossbar set song_load:progress name "§9Something went wrong!"
bossbar set song_load:progress color red
execute store result bossbar song_load:progress value run bossbar get song_load:progress max
schedule function song_load:utils/hide_bossbar 15t

playsound block.conduit.deactivate master @a ~ ~ ~ 1.354

tellraw @a ["",{"text": "[MusicBlocks] ", "color": "gray"},{"text": "The Operation has failed to execute!", "color": "red"}]