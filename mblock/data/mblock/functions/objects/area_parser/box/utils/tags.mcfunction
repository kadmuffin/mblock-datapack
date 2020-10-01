tag @s remove on_center
execute unless score @s _aparse.z matches 0..1 unless score @s _aparse.z >= @s aparse.zsize run tag @s add on_center
