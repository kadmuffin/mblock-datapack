scoreboard players add internal_zsize _array_tmp 1
scoreboard players remove length _array_tmp 1

tag @s remove magenta_terracotta

function mblock:block/get_tone
function mblock:block/get_sound

execute as @s[tag=counting_air] run function mblock:objects/item_reader/saving/events/update_air_event

execute as @s[tag=!end_recursion,tag=on_y_zero] run function mblock:objects/item_reader/saving/events/register_events
execute as @s[tag=!end_recursion,tag=!on_y_zero,tag=contains_events] run function mblock:objects/item_reader/saving/events/load_events

execute as @s[tag=!end_recursion] run function mblock:objects/item_reader/saving/events/run_while_not_on_end
