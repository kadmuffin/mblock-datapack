function mblock:objects/area_parser/lib/block/check_block

execute unless score @s _aparse_tmp2 < @s aparse.zsize run kill @s

execute positioned ~2 ~ ~ if score @s[tag=!look_neg] _aparse_tmp2 < @s aparse.zsize run tp ~ ~ ~
execute positioned ~-2 ~ ~ if score @s[tag=look_neg] _aparse_tmp2 < @s aparse.zsize run tp ~ ~ ~

