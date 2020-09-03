execute at @e[tag=xyz_pointers] run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 10
function mblock:interface/utils/clear_chat
tellraw @a ["",{"text": "[MusicBlocks] ", "color": "gray"},{"text": "The Travelled Distance was: ", "color": "green"}, {"score": {"objective": "sload", "name": "@e[tag=z_pointer,limit=1]"},"color": "gold"},{"text": " blocks!", "color": "green"}]

kill @e[tag=xyz_pointers]

bossbar set song_load:progress name "§6Operation Cancelled!"
bossbar set song_load:progress color yellow
execute store result bossbar song_load:progress value run bossbar get song_load:progress max
schedule function song_load:utils/hide_bossbar 15t

tag @s remove __menu
playsound block.conduit.deactivate master @a ~ ~ ~ 1 1.865

scoreboard players set #operation_state sload_run 0

tellraw @a ["",{"text": "[MusicBlocks] ", "color": "gray"},{"text": "The Operation was suspended correctly!", "color": "blue"}]