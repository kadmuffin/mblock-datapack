function mblock:box/utils/summon/pointer

scoreboard players operation @e[tag=new_step,limit=1] box.x = @s box.x
scoreboard players operation @e[tag=new_step,limit=1] box.y = @s box.y
scoreboard players operation @e[tag=new_step,limit=1] box.z = @s box.z

tag @e[tag=new_step,limit=1] add z_step
tag @e[tag=new_step,limit=1] remove new_step