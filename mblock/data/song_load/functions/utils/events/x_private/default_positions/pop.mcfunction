data remove entity @s ArmorItems[3].tag.tmp_events[-1]
scoreboard players add @s sload_tmp 1

execute if entity @a[tag=debug] as @s[tag=pop] run function song_load:utils/events/x_private/default_positions/debug
execute if entity @a[tag=debug] run tellraw @a[tag=debug] {"text": " "}


tag @s remove pop