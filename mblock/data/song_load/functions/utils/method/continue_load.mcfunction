function mblock:interface/utils/clear_chat
function song_load:utils/bossbar/reverse

execute as @e[tag=z_pointer,tag=asking,limit=1] run function song_load:utils/array/precompute/reverse

tag @s remove __menu
tag @s remove load_question
tag @e[tag=z_pointer,tag=asking,limit=1] remove asking
