#execute unless score ylength _array_tmp >= @s aparse.ysize if block ~ ~ ~ #mblock:soundable run function mblock:objects/item_reader/saving/notes_around_sound

scoreboard players add tone_count _array_tmp 1
scoreboard players add total_tones _array_tmp 1

# Stop the count when a condition is meet
execute as @s[tag=counting_tone] if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event
execute as @s[tag=counting_tone] if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event
execute as @s[tag=counting_tone] if block ~ ~ ~ purple_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event

execute as @s[tag=counting_tone] if score @s aparse.zsize <= internal_zsize _array_tmp run function mblock:objects/item_reader/saving/events/stop_tone_event
execute as @s[tag=counting_tone] if score #tone _mbtmp matches -1 run function mblock:objects/item_reader/saving/events/stop_tone_event
execute as @s[tag=counting_tone] unless score #tone _mbtmp = #tone_id _array_tmp run function mblock:objects/item_reader/saving/events/stop_tone_event
execute as @s[tag=counting_tone] unless score #sound _mbtmp = #sound_id _array_tmp run function mblock:objects/item_reader/saving/events/stop_tone_event
