# Experiment with bpm configs

scoreboard players set #60 _mbtmp 60
scoreboard players set #10 _mbtmp 100
scoreboard players set #_10 _mbtmp 18
scoreboard players set #5 _mbtmp 5
scoreboard players set #54 _mbtmp 54

#scoreboard players operation #BPM _mbtmp = $.bpm mb_player
#scoreboard players operation #BPM _mbtmp *= #60 _mbtmp
#scoreboard players operation #BPM _mbtmp /= #10 _mbtmp

scoreboard players operation #BPM_TEMPO _mbtmp = $.bpm mb_player
scoreboard players operation #BPM_TEMPO _mbtmp -= #_10 _mbtmp
scoreboard players operation #5 _mbtmp *= #BPM_TEMPO _mbtmp
scoreboard players operation #5 _mbtmp /= #54 _mbtmp
scoreboard players operation #BPM_TEMPO _mbtmp = #5 _mbtmp
