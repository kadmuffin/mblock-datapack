scoreboard players set #operation_state sload_run 1

function mblock:interface/utils/clear_chat
function song_load:utils/bossbar/reverse

execute store result score #force_length sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.song.force[2]
execute store result score #force_ysize sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.song.force[1]
execute store result score #force_xsize sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.song.force[0]

# Set to zero, as the reverse operation
# will fix it
execute unless score #force_length sload_tmp matches 1.. run scoreboard players set song_length sload 0
execute unless score #force_ysize sload_tmp matches 1.. run scoreboard players set song_ysize sload 0

execute as @e[tag=z_pointer,tag=asking,limit=1] run function song_load:utils/array/precompute/reverse

tag @s remove __menu
tag @s remove load_question
tag @e[tag=z_pointer,limit=1] remove asking
