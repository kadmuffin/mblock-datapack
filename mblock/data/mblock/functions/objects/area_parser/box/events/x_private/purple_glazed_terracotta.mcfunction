tag @s[tag=skip_x] remove render_floor
tag @s remove skip_x
function mblock:objects/area_parser/box/utils/z_step/before_end
scoreboard players operation @s _aparse.z = @s aparse.zsize
scoreboard players operation @s _aparse.z += #sig_a _aparse.tmp
