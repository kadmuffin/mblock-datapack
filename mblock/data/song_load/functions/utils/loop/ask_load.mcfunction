execute as @s[tag=load] run tag @p add load_question
execute as @s[tag=save] run tag @p add save_question
tag @p add __menu
tag @p add sload_menu
tag @p add sload_question

execute as @s[tag=load,tag=in_box] if score song_xsize sload matches 0..3 if score song_length sload matches 0..9 run function song_load:utils/method/continue_load