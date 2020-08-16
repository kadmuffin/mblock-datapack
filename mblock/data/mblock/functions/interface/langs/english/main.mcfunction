# ------------
#    title
function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

execute as @s[tag=!load_menu,tag=!load_question] run function mblock:interface/langs/english/normal/main
execute as @s[tag=load_question] run function mblock:interface/langs/english/song_load/load_question
execute as @s[tag=load_menu] run function mblock:interface/langs/english/song_load/menu

function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
