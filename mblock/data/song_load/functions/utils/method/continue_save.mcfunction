scoreboard players set #operation_state sload_run 1

function mblock:interface/utils/clear_chat
function song_load:utils/bossbar/save

execute as @e[tag=z_pointer,tag=asking,limit=1] run function song_load:utils/array/save/fill_notes

tag @s remove __menu
tag @s remove save_question
tag @e[tag=z_pointer,limit=1] remove asking
