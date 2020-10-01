scoreboard players add @s _aparse.tmp 1

function mblock:objects/area_parser/checks/summon
execute if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/summon/movement/run_x

execute unless score @s _aparse.tmp < @s aparse.ysize run scoreboard players reset @s _aparse.tmp
execute if score @s _aparse.tmp < @s aparse.ysize positioned ~ ~1 ~ run function mblock:objects/area_parser/summon/movement/vertical
