scoreboard players add #tick mb_tmp 1

execute as @e[tag=music_player,tag=play_next_tick] at @s positioned ~ ~-1.2 ~ run function mblock:objects/music_player/plugins/note_player/summon_player

execute at @a as @e[type=item_frame,tag=!music_player,tag=!invalid_pos,distance=..7,limit=1,nbt={Item: {id: "minecraft:arrow"}}] at @s if block ~ ~-1 ~ note_block if block ~ ~ ~ air run function mblock:objects/music_player/block/init
execute as @e[type=item_frame,tag=music_player,tag=!dying_item_frame] at @s run function mblock:objects/music_player/mplayer_loop

execute as @e[type=item_frame,tag=invalid_pos] if entity @s[nbt=!{Item: {id: "minecraft:arrow"}}] run tag @s remove invalid_pos

execute if score #tick mb_tmp matches 10.. run function mblock:objects/music_player/xyz_private/run_var_update_and_menu
execute if score #tick mb_tmp matches 10.. run scoreboard players reset #tick mb_tmp

function mblock:objects/music_player/plugins/note_player/main
