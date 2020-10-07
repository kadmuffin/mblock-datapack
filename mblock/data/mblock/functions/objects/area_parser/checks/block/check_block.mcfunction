tag @s add render

execute unless score @s _aparse.x >= @s aparse.xsize unless score @s _aparse.tmp matches 0 unless score @s _aparse.tmp >= @s aparse.ysize run tag @s remove render
execute unless score @s _aparse.x >= @s aparse.xsize unless score @s _aparse.z matches ..0 unless score @s _aparse.z > @s aparse.zsize run tag @s remove render

execute as @s[tag=render] if block ~ ~ ~ air run function mblock:objects/area_parser/checks/particles

execute as @s[tag=render_floor,scores={_aparse.tmp=0}] run function mblock:objects/area_parser/checks/block/floors/main

execute as @s[tag=!render, scores={_aparse.tmp=0}] run function mblock:objects/area_parser/checks/block/x_private/not_render

execute as @s[tag=!render] if entity @a[distance=0..3] run function mblock:block/player/entity/set_default