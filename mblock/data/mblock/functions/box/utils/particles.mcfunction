tag @s add render

execute unless score @s _box.tmp1 >= @s box.x unless score @s _box.travel matches 0 unless score @s _box.travel >= @s box.y run tag @s remove render
execute unless score @s _box.tmp1 >= @s box.x unless score @s _box.tmp matches 0..1 unless score @s _box.tmp >= @s box.z run tag @s remove render

execute as @s[tag=render] run particle end_rod ~ ~ ~ 0 0 0 0 1