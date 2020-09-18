scoreboard players enable @s mb.width
scoreboard players enable @s mb.height
scoreboard players enable @s mb.length
scoreboard players enable @s mb.tempo

tag @e[tag=music_player,sort=nearest,limit=1] add target_player

execute if score @s mb_id = @e[tag=target_player,limit=1] mb_id run tag @s add same_player
execute if score @s[tag=same_player] mb.width matches 1..20 unless score @s mb.width = @e[tag=target_player,limit=1] aparse.xsize run function mblock:interface/utils/x_private/trigger/update.xsize
execute if score @s[tag=same_player] mb.height matches 1..14 unless score @s mb.height = @e[tag=target_player,limit=1] aparse.ysize run function mblock:interface/utils/x_private/trigger/update.ysize
execute if score @s[tag=same_player] mb.length matches 1.. unless score @s mb.length = @e[tag=target_player,limit=1] aparse.zsize run function mblock:interface/utils/x_private/trigger/update.zsize
execute if score @s[tag=same_player] mb.tempo matches 5.. unless score @s mb.tempo = @e[tag=target_player,limit=1] mb.bpm run function mblock:interface/utils/x_private/trigger/update.bpm

function mblock:interface/utils/store_triggers

tag @e[tag=target_player,limit=1] remove target_player
tag @s remove same_player