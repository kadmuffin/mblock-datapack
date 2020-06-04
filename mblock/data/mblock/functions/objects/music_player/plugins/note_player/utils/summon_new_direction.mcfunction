tag @s add _summon_player
tag @s add _not_align

scoreboard players operation @s mb_tmpz = @s aparse.zsize
scoreboard players remove @s[tag=!copy_travel] mb_tmpz 1
scoreboard players add @s[tag=copy_travel] mb_tmpz 1
scoreboard players set @s aparse.zsize 0

execute as @s[tag=!copy_travel] align xz positioned ~.5 ~-1 ~.5 run function mblock:objects/area_parser/run_instant
execute as @s[tag=copy_travel] positioned ~ ~-1 ~ run function mblock:objects/area_parser/run_instant

kill @s