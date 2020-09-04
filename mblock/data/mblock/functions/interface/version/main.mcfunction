# Datapack version (x.y.z) -> (v0.8.0)
scoreboard players set #version_x_tmp _mbtmp 0
scoreboard players set #version_y_tmp _mbtmp 8
scoreboard players set #version_z_tmp _mbtmp 0

execute if score #version_x _mbtmp matches 0.. if score #version_y _mbtmp matches 0.. if score #version_z _mbtmp matches 0.. run function mblock:interface/version/x_private/check_version

execute unless score #version_x _mbtmp matches 0.. run scoreboard players operation #version_x _mbtmp = #version_x_tmp _mbtmp
execute unless score #version_y _mbtmp matches 0.. run scoreboard players operation #version_y _mbtmp = #version_y_tmp _mbtmp
execute unless score #version_z _mbtmp matches 0.. run scoreboard players operation #version_z _mbtmp = #version_z_tmp _mbtmp