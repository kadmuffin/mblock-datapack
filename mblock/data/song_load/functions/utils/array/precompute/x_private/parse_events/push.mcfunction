data modify entity @s ArmorItems[3].tag.data.events[0][0] append from entity @s ArmorItems[3].tag.tmp_events[-1]
data remove entity @s ArmorItems[3].tag.tmp_events[-1]
execute store result bossbar song_load:progress value run scoreboard players get @s sload_tmp
tellraw @a[tag=debug] ["",{"text": " + ", "color": "gold", "hoverEvent": {"action": "show_text","value": "Info"}}, {"text": "Event Appended to Array","color": "gray"}]
