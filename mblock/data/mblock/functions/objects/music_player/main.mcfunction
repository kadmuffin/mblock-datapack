execute at @a as @e[type=item_frame,tag=!music_player,distance=..7,limit=1,nbt={Item:{id:"minecraft:arrow"}}] at @s if block ~ ~-1 ~ note_block if block ~ ~ ~ air run function mblock:objects/music_player/block/init
execute as @e[type=item_frame,tag=music_player,tag=!dying_item_frame] at @s run function mblock:objects/music_player/mplayer_loop
scoreboard players add @e[tag=_run_redstone] _mbtmp 1
execute as @e[tag=_run_redstone,scores={_mbtmp=20..}] at @s run setblock ~ ~ ~ air
execute as @e[tag=_run_redstone,scores={_mbtmp=20..}] at @s run kill @s