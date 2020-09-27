function mblock:box/utils/summon/pointer

scoreboard players operation @e[tag=new_step,limit=1] box.y = @s box.y
scoreboard players operation @e[tag=new_step,limit=1] box.x = @s box.x
scoreboard players operation @e[tag=new_step,limit=1] box.z = @s box.z
scoreboard players operation @e[tag=new_step,limit=1] _box.tmp = @s _box.travel
scoreboard players remove @e[tag=new_step,limit=1] box.z 1
scoreboard players add @e[tag=new_step,limit=1] _box.tmp 1
scoreboard players add @e[tag=new_step,limit=1] _box.tmp1 1

tag @e[tag=new_step,limit=1] add y_step
tag @e[tag=new_step,limit=1] remove new_step