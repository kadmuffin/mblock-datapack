execute if entity @s[tag=load] run tellraw @a [{"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Notes Loaded!", "color": "green"}]
execute if entity @s[tag=save] run tellraw @a [{"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Notes Saved!", "color": "blue"}]
bossbar set song_load:progress color pink
schedule function song_load:utils/hide_bossbar 15t
kill @e[tag=z_pointer_extra]
kill @s
