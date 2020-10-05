function mblock:interface/utils/clear_chat

execute unless score @s mb.menu.page matches 1.. run execute as @s[tag=!sload_menu] run function mblock:interface/langs/english/normal/main
execute as @s[tag=!sload_menu,scores={mb.menu.page=1}] run function mblock:interface/langs/english/settings

execute as @s[tag=sload_question] run function mblock:interface/langs/english/song_load/question
execute as @s[tag=sload_menu,tag=!sload_question] run function mblock:interface/langs/english/song_load/menu
