scoreboard players set #60 _mbtmp 60
scoreboard players set #10 _mbtmp 100

scoreboard players operation #BPM _mbtmp = $.bpm mb_player
scoreboard players operation #BPM _mbtmp *= #60 _mbtmp
scoreboard players operation #BPM _mbtmp /= #10 _mbtmp