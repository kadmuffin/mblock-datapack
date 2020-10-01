scoreboard players add @s _aparse.x 1

function mblock:objects/area_parser/checks/summon
execute positioned ~ ~ ~1 if score @s _aparse.x < @s aparse.xsize run function mblock:objects/area_parser/summon/movement/x/horizontal_plus_z