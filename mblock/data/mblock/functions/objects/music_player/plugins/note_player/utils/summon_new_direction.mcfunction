tag @s add _summon_player
tag @s add _not_align
tag @s[tag=direction_changed] add copy_travel

#scoreboard players remove @s[tag=copy_travel] aparse.zsize 1
#scoreboard players add @s[tag=copy_travel] aparse.zsize 1

execute as @s positioned ~ ~-1 ~ run function mblock:objects/area_parser/play_wall
#execute as @s[tag=copy_travel] positioned ~ ~-1 ~ run function mblock:objects/area_parser/play_wall

kill @s