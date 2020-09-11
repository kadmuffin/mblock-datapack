execute if entity @a[tag=debug] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Small: 1b, Tags: [x_pointer, xyz_pointers]}
execute if entity @a[tag=!debug] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [x_pointer, xyz_pointers]}
scoreboard players operation @e[tag=x_pointer] mb.dir = @s mb.dir