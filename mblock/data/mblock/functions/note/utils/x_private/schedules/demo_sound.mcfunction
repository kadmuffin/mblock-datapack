# Plays a sequence of tones based on sound
execute as @a[tag=_schedule_tone] at @s run function mblock:note/utils/x_private/demo_sound
execute if entity @a[tag=_schedule_tone] run schedule function mblock:note/utils/x_private/schedules/demo_sound 3t