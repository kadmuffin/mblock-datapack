tag @s[tag=skip_x] add skip_floor
tag @s[tag=!skip_x] remove render_floor
scoreboard players operation @s _aparse.z = @s aparse.zsize
scoreboard players operation @s _aparse.z += #sig_a _aparse.tmp
function mblock:objects/area_parser/checks/block/check_block
function mblock:objects/area_parser/box/utils/summon_y
function mblock:objects/area_parser/box/movement/run_x

tag @s remove skip_x
tag @s remove skip_floor
tag @s add render_floor
