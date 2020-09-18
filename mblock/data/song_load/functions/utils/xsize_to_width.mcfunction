# Same as doing ceil((array.length - 1) / 2)
scoreboard players operation song_width sload = song_xsize sload
scoreboard players operation song_width sload /= #2 sload

scoreboard players operation size sload_tmp = song_xsize sload
scoreboard players operation size sload_tmp %= #2 sload

execute if score size sload matches 0 run scoreboard players add song_width sload 1

tag @s remove calculate_xsize