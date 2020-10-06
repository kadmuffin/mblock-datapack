scoreboard players operation #tone_scaled _mbtmp = #tone _mbtmp
execute if score #octave _mbtmp matches -1 run scoreboard players add #tone_scaled _mbtmp 24
execute if score #octave _mbtmp matches 1 run scoreboard players remove #tone_scaled _mbtmp 24
