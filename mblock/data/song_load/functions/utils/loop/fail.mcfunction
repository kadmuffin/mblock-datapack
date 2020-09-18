kill @e[tag=xyz_pointers]

bossbar set song_load:progress name "§9Something went wrong!"
bossbar set song_load:progress color red
execute store result bossbar song_load:progress value run bossbar get song_load:progress max
schedule function song_load:utils/hide_bossbar 15t

execute as @a[tag=__menu,tag=load_menu] run function mblock:interface/utils/clear_chat
execute as @a[tag=__menu,tag=load_question] run function mblock:interface/utils/clear_chat

tag @e[tag=mplayer_block,limit=1] remove mplayer_block
tag @a[tag=__menu,tag=load_menu] remove __menu
tag @a[tag=__menu,tag=load_question] remove __menu

scoreboard players set #operation_state sload_run 0

execute as @a at @s run playsound minecraft:block.anvil.destroy master @s

function #mb_plugin:menu/sload/fail