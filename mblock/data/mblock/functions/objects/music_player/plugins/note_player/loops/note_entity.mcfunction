execute as @s[tag=!_played] unless entity @a[tag=play_here] at @s run function mblock:note/utils/check_at_pos
execute as @s[tag=!_played] if entity @a[tag=play_here] at @a[tag=play_here,limit=1] run function mblock:objects/music_player/plugins/note_player/utils/note_check
#execute as @s[tag=!_played] at @s if score #sound _mbtmp matches 1..4 align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0.4 1

tag @s add _played

execute if block ~ ~ ~ air run kill @s
execute as @s[tag=!_note_lg] unless entity @e[tag=note_player,distance=0..2.6] run kill @s

scoreboard players add @s[tag=_note_lg] sload_tmp 1
execute if score @s[tag=_note_lg] sload_tmp matches 3.. run kill @s
