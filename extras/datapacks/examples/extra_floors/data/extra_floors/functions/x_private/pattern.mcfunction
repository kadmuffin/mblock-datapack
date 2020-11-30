scoreboard players operation #pattern _aparse.tmp = @s _aparse.x
scoreboard players operation #pattern _aparse.tmp += @s aparse.id

scoreboard players operation #pattern _aparse.tmp *= #travel _aparse.z
scoreboard players operation #pattern _aparse.tmp += @s aparse.zsize

scoreboard players operation #mod _aparse.tmp = @s mbn.sound
scoreboard players add #mod _aparse.tmp 1
scoreboard players operation #pattern _aparse.tmp %= #mod _aparse.tmp

execute if score #pattern _aparse.tmp matches 0 run setblock ~ ~-1 ~ polished_andesite
execute if score #pattern _aparse.tmp matches 1 run setblock ~ ~-1 ~ grass_block