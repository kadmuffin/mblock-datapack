scoreboard players add @s _aparse.x 1

function mblock:objects/area_parser/checks/block/check_block

execute if entity @a[distance=0..25] positioned ~ ~ ~1 if score @s _aparse.x < @s aparse.xsize run function mblock:objects/area_parser/box/movement/x/horizontal_plus_z