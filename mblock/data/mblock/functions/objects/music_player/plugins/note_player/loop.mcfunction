execute as @e[tag=_note,tag=!_played] at @s run function mblock:block/check_at_pos
execute as @e[tag=_note] at @s run tag @s add _played

execute as @e[tag=_note] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_note] at @s unless entity @e[tag=note_player,distance=0..1.2] run kill @s

execute if entity @e[tag=note_player] as @e[tag=note_player] at @s run function mblock:objects/music_player/plugins/update_player