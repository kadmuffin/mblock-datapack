scoreboard players set #version_test _mbtmp 1

execute if score #version_test _mbtmp matches 1 if score #version_x_tmp _mbtmp > #version_x _mbtmp run function mblock:interface/version/update
execute if score #version_test _mbtmp matches 1 if score #version_x_tmp _mbtmp >= #version_x _mbtmp if score #version_y_tmp _mbtmp > #version_y _mbtmp run function mblock:interface/version/update
execute if score #version_test _mbtmp matches 1 if score #version_x_tmp _mbtmp >= #version_x _mbtmp if score #version_y_tmp _mbtmp >= #version_y _mbtmp if score #version_z_tmp _mbtmp > #version_z _mbtmp run function mblock:interface/version/update

execute if score #version_test _mbtmp matches 1 if score #version_x_tmp _mbtmp = #version_x _mbtmp if score #version_y_tmp _mbtmp = #version_y _mbtmp if score #version_z_tmp _mbtmp = #version_z _mbtmp run scoreboard players set #version_test _mbtmp 0

execute if score #version_test _mbtmp matches 1 run function mblock:interface/version/messages/warning

