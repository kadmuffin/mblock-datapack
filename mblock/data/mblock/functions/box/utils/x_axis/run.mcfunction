scoreboard players reset @s _box.tmp1

execute if score @s mb.dir matches 0..1 run function mblock:box/utils/x_axis/x_private/neg_x
execute if score @s mb.dir matches 2..3 run function mblock:box/utils/x_axis/x_private/neg_z

scoreboard players reset @s _box.tmp1

execute if score @s mb.dir matches 0..1 run function mblock:box/utils/x_axis/x_private/plus_x
execute if score @s mb.dir matches 2..3 run function mblock:box/utils/x_axis/x_private/plus_z