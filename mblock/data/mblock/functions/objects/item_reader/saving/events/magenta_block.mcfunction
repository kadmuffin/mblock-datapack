function mblock:objects/area_parser/lib/block/store_magenta
data modify entity @s Item.tag.tmp set value {event: 3, dir: -1}


execute store result entity @s Item.tag.tmp.dir byte 1 run scoreboard players get @s _aparse_tmp5
#data modify entity @s Item.tag.z_data append from entity @s Item.tag.tmp
execute store result entity @s Item.tag.tmp.z_pos short 1 run scoreboard players get internal_zsize _array_tmp
data modify entity @s Item.tag.data.events append from entity @s Item.tag.tmp

scoreboard players operation internal_zsize _array_tmp -= @s aparse.zsize
scoreboard players operation length _array_tmp = @s aparse.zsize

tag @s add not_align
tag @s add disable_redraw
tag @s add magenta_terracotta

function mblock:objects/area_parser/lib/block/set_dir_from_score
