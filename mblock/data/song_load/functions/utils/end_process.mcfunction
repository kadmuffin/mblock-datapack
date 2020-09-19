execute as @e[tag=z_pointer,limit=1] if entity @s[tag=save] run function song_load:utils/method/copy_data_to_item
tag @e[tag=mplayer_block,limit=1] remove mplayer_block

function mblock:interface/utils/clear_chat

execute if score song_length sload matches 250.. run playsound minecraft:entity.player.levelup master @a
execute at @e[tag=xyz_pointers] run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 8
execute if entity @s[tag=load] run tellraw @a ["",{"text": "[MusicBlocks] ", "color":"dark_gray"}, {"text": "Notes Loaded!", "color": "green"}]
execute if entity @s[tag=save] run tellraw @a ["",{"text": "[MusicBlocks] ", "color":"dark_gray"}, {"text": "Notes Saved!", "color": "blue"}]
bossbar set song_load:progress color pink
schedule function song_load:utils/hide_bossbar 15t
scoreboard players set #operation_state sload_run 0
kill @e[tag=xyz_pointers]
