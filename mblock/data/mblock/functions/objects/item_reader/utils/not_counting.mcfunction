scoreboard players remove length _array_tmp 1

execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/events/load_events
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/events/load_events

execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/events/load_events
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/events/load_events

data remove entity @s Item.tag.z_data[0]