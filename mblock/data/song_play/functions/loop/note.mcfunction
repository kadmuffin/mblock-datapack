execute as @s[tag=!_played] unless entity @a[tag=play_here] at @s run function mblock:note/utils/check_at_pos
execute as @s[tag=!_played] if entity @a[tag=play_here] at @a[tag=play_here,limit=1] run function mblock:objects/music_player/plugins/note_player/utils/note_check

tag @s add _played

scoreboard players add @s sload_tmp 1
execute if block ~ ~ ~ air run kill @s
execute if score @s sload_tmp matches 6.. run kill @s
