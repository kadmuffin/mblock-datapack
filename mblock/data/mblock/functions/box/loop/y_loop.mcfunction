execute if score @s _box.tmp matches 1 run function mblock:box/utils/x_axis/run
execute if score @s _box.tmp >= @s box.z run function mblock:box/utils/x_axis/run
execute if score @s _box.travel matches 0 run function mblock:box/utils/x_axis/run
execute if score @s _box.travel >= @s box.y run function mblock:box/utils/x_axis/run

execute if score @s _box.travel > @s box.y run kill @s
execute unless score @s _box.travel > @s box.y run function mblock:box/utils/tp/move.y