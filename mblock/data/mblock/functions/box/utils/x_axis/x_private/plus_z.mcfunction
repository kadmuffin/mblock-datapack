scoreboard players add @s _box.tmp1 1

function mblock:box/loop/x_loop

execute if entity @a[distance=0..25] positioned ~ ~ ~1 if score @s _box.tmp1 < @s box.x run function mblock:box/utils/x_axis/x_private/plus_z