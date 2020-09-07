scoreboard players add @s sload_tmp 1
function song_load:utils/events/x_private/parse_position

execute as @s[tag=!fail_at_parse] run tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ", "color": "dark_gray"}, {"text": "Placing Event at [x: ","color": "gold"},{"score": {"name": "#x_event","objective": "sload_tmp"},"color": "blue"},{"text": "; y: ","color": "gold"},{"score": {"name": "#y_event","objective": "sload_tmp"},"color": "blue"},{"text": "; z: ","color": "gold"},{"score": {"name": "#z_event","objective": "sload_tmp"},"color": "blue"},{"text": "]","color": "gold"}]

scoreboard players set #x_pos sload_tmp 0
execute as @s[tag=!fail_at_parse] run function song_load:utils/array/load/x_private/parse_events/cycle_x
#execute as @s[tag=!fail_at_parse] run function song_load:utils/array/load/x_private/parse_events/x_cl

execute store result bossbar song_load:progress value run scoreboard players get @s sload_tmp
