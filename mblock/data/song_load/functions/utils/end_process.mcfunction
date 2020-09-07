execute if score song_length sload matches 250.. run playsound minecraft:entity.player.levelup master @a
execute at @e[tag=xyz_pointers] run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 8
execute if entity @s[tag=load] run tellraw @a ["",{"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Notes Loaded!", "color": "green"}]
execute if entity @s[tag=save] run tellraw @a ["",{"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Notes Saved!", "color": "blue"}]
bossbar set song_load:progress color pink
schedule function song_load:utils/hide_bossbar 15t
scoreboard players set #operation_state sload_run 0
kill @e[tag=xyz_pointers]
