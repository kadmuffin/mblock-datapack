scoreboard players operation #travel _aparse.z = @s _aparse.z

execute unless block ~ ~-1 ~ #mb_plugin:floor/not_replaceable run function mblock:objects/area_parser/checks/block/floors/x_private/floors

scoreboard players add #travel _aparse.z 1

execute as @s[tag=!skip_floor] run function mblock:objects/area_parser/checks/block/floors/x_private/next