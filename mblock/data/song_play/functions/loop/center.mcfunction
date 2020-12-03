particle cloud ~ ~ ~ 0 0 0 0 1
function mblock:objects/music_player/plugins/note_player/utils/update_center

execute align xyz positioned ~.5 ~1.5 ~.5 run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute align xyz positioned ~.5 ~1.5 ~.5 run function mblock:objects/music_player/plugins/note_player/block_events/center_events

function song_play:run