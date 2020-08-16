execute at @e[tag=xyz_pointers] run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 10

kill @e[tag=xyz_pointers]

bossbar set song_load:progress name "§6Operation Cancelled!"
bossbar set song_load:progress color yellow
execute store result bossbar song_load:progress value run bossbar get song_load:progress max
schedule function song_load:utils/hide_bossbar 15t

tag @s remove __menu
function mblock:interface/utils/clear_chat
playsound block.conduit.deactivate master @a ~ ~ ~ 1 1.865

tellraw @a ["",{"text": "[MusicBlocks] ", "color": "gray"},{"text": "The Operation was suspended correctly!", "color": "blue"}]