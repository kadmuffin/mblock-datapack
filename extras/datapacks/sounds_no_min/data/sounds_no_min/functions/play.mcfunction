scoreboard players set #skip_play _mbtmp 1

execute if score #sound _mbtmp matches 0..7 run function sounds_no_min:x_private/tree/play/0-7/main
execute if score #sound _mbtmp matches 8..15 run function sounds_no_min:x_private/tree/play/8-15/main
