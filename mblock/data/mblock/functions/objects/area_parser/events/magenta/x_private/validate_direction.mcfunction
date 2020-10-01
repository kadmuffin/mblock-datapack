execute as @s[scores={mb.dir=0..1}] if score .new_direction _aparse.tmp1 matches 0..1 run tag @s remove direction_changed
execute as @s[scores={mb.dir=2..3}] if score .new_direction _aparse.tmp1 matches 2..3 run tag @s remove direction_changed

execute as @s[tag=!direction_changed,tag=z_step] if entity @a[distance=0..5] unless entity @e[tag=box_error,distance=0..1] run summon area_effect_cloud ~ ~.5 ~ {Age:0, Duration: 80,  WaitTime: 0, Particle: "angry_villager", CustomName:'"§cInvalid Direction"', CustomNameVisible:1b, Tags:[box_error]}
execute as @s[tag=direction_changed] run function mblock:objects/area_parser/events/magenta/x_private/apply