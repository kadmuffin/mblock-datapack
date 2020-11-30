scoreboard players set #bpm _mbtmp 0

function bpm_set:get_bpm

execute unless score #bpm _mbtmp matches 5.. run scoreboard players set #bpm _mbtmp 0

function mblock:utils/update_bpm
function mblock:utils/end_event