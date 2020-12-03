scoreboard players reset @e[tag=_note_lg,distance=0..1,limit=1] sload_tmp
scoreboard players reset @e[tag=_play_event_lg,distance=0..1,limit=1] _mbtmp
execute align xyz positioned ~.5 ~1.5 ~.5 run function mblock:objects/music_player/plugins/note_player/utils/block_events
