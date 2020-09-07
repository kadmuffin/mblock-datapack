scoreboard players set #2 sload_tmp 2
scoreboard players operation #x_event sload_tmp = song_xsize sload
scoreboard players operation #x_event sload_tmp /= #2 sload_tmp
scoreboard players set #y_event sload_tmp 0
execute store result score #z_event sload_tmp run data get entity @s ArmorItems[3].tag.tmp_events[-1].z_pos

tellraw @a[tag=debug] ["",{"text": " * ", "color": "light_purple","hoverEvent": {"action": "show_text","value": "Method Call"}}, {"text": "Using Z_POS method for position","color": "gray"}]

execute if score #z_event sload_tmp matches -1 run function song_load:utils/events/x_private/default_positions/z

scoreboard players operation #length_diff sload_tmp = song_length sload
scoreboard players operation #length_diff sload_tmp -= #z_event sload_tmp
execute if score #length_diff sload_tmp matches ..-1 run scoreboard players operation #length_diff sload_tmp *= #-1 sload

tag @s add pop
execute as @s[tag=pop] unless score #z_event sload_tmp matches 0.. run function song_load:utils/events/x_private/default_positions/pop
execute as @s[tag=pop] if score #z_event sload_tmp > song_length sload unless score #length_diff sload_tmp matches 0..30 run function song_load:utils/events/x_private/default_positions/pop
execute as @s[tag=pop] if score #z_event sload_tmp >= song_length sload if score #length_diff sload_tmp matches 0..30 run scoreboard players operation song_length sload += #length_diff sload_tmp


data modify entity @s[tag=pop] ArmorItems[3].tag.tmp_events[-1].position set value 0
execute store result entity @s[tag=pop] ArmorItems[3].tag.tmp_events[-1].position int 1 run scoreboard players get #z_event sload_tmp
data remove entity @s[tag=pop] ArmorItems[3].tag.tmp_events[-1].z_pos

execute as @s[tag=!pop] run tag @s add fail_at_parse

tag @s remove pop
tag @s remove pop2
