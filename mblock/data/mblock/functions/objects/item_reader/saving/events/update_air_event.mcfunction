execute unless score ylength _array_tmp >= @s aparse.ysize if block ~ ~ ~ #mblock:soundable run function mblock:objects/item_reader/saving/notes_around_sound

scoreboard players add air_count _array_tmp 1
scoreboard players add total_air _array_tmp 1

# Stop the count when a condition is meet
execute if score @s aparse.zsize <= interal_zsize _array_tmp run function mblock:objects/item_reader/saving/events/stop_air_count
execute unless score #tone _mbtmp matches -1 run function mblock:objects/item_reader/saving/events/stop_air_count
execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_air_count
execute if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_air_count
execute if block ~ ~ ~ purple_glazed_terracotta run function mblock:objects/item_reader/saving/events/stop_air_count
