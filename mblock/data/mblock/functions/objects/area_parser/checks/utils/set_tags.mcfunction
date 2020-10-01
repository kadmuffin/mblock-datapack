tag @s remove on_side
tag @s remove on_side_center
tag @s remove on_z_center
tag @s remove on_center
tag @s remove on_corner
tag @s remove on_start
tag @s remove on_end
tag @s remove on_top
tag @s remove on_bottom
tag @s remove on_x_end
tag @s remove is_air
tag @s remove on_true_end

scoreboard players operation #tmp_z _aparse.tmp = @s aparse.zsize
scoreboard players remove #tmp_z _aparse.tmp 1

execute as @s[tag=check_air] if block ~ ~ ~ air run tag @s add is_air

tag @s[scores={_aparse.z=0..1}] add on_start
tag @s[tag=!_disable_z,scores={_aparse.tmp=0..1}] add on_bottom
execute if entity @s[scores={_aparse.tmp=0..1}] unless score @s _aparse.x matches 1.. run tag @s add on_z_center
execute if score @s _aparse.z >= #tmp_z _aparse.tmp run tag @s add on_end
execute if score @s _aparse.z >= @s aparse.zsize run tag @s add on_true_end
execute if score @s _aparse.x >= @s aparse.xsize run tag @s add on_x_end
execute if score @s _aparse.tmp >= @s aparse.ysize run tag @s add on_top


tag @s[tag=on_true_end] add on_side
tag @s[tag=on_start] add on_side
tag @s[tag=on_x_end] add on_side

tag @s[tag=on_start,tag=on_x_end] add on_corner
tag @s[tag=on_true_end,tag=on_x_end] add on_corner

tag @s[tag=!on_start,tag=!on_end] add on_center

tag @s[tag=on_side,tag=!on_corner,tag=!on_bottom,tag=!on_top] add on_side_center