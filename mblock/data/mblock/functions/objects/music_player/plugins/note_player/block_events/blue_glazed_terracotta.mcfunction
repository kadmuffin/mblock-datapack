summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [_play_event_kill]}

tag @s add sound_updated
scoreboard players set @s mbn.sound 0
function mblock:note/utils/get_sound

tag @s add change_sound
execute as @e[tag=note_player,tag=!change_sound] if score @s mb.id = @e[tag=change_sound,limit=1] mb.id run scoreboard players operation @s mbn.sound = #sound _mbtmp
execute as @e[tag=note_player,tag=!change_sound] if score @s mb.id = @e[tag=change_sound,limit=1] mb.id run tag @s add sound_updated
tag @s remove change_sound

scoreboard players operation @s mbn.sound = #sound _mbtmp
