scoreboard players set #octave _mbtmp 0
scoreboard players operation #tone_scaled _mbtmp = #tone _mbtmp
execute if score #tone_scaled _mbtmp matches -24..-1 run scoreboard players set #octave _mbtmp -1
execute if score #tone_scaled _mbtmp matches -24..-1 run scoreboard players add #tone_scaled _mbtmp 25
execute if score #tone_scaled _mbtmp matches 25..48 run scoreboard players set #octave _mbtmp 1
execute if score #tone_scaled _mbtmp matches 25..48 run scoreboard players remove #tone_scaled _mbtmp 25
