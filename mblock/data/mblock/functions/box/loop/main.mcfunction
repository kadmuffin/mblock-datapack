

execute unless score @s _box.travel >= @s box.z run function mblock:box/utils/tp/move.z
execute if score @s _box.travel >= @s box.z run kill @s