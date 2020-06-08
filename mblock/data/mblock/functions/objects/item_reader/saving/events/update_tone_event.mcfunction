#execute unless score ylength _array_tmp >= @s aparse.ysize if block ~ ~ ~ #mblock:soundable run function mblock:objects/item_reader/saving/notes_around_sound

scoreboard players add tone_count _array_tmp 1
scoreboard players add total_tones _array_tmp 1

# Stop the count when a condition is meet
execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event
execute if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event
execute if block ~ ~ ~ purple_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_tone_event

execute if score @s aparse.zsize <= internal_zsize _array_tmp run function mblock:objects/item_reader/saving/events/stop_tone_event
execute if score #tone _mbtmp matches -1 run function mblock:objects/item_reader/saving/events/stop_tone_event
execute unless score #tone _mbtmp = #tone_id _array_tmp run function mblock:objects/item_reader/saving/events/stop_tone_event
