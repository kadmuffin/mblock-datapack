scoreboard players enable @s mb.width
scoreboard players enable @s mb.height
scoreboard players enable @s mb.length
scoreboard players enable @s mb.tempo

execute if score @s[scores={mb.width=1..}] mb.width matches 1..20 run function mblock:interface/utils/x_private/trigger/update.xsize
execute if score @s[scores={mb.height=1..}] mb.width matches 1..14 run function mblock:interface/utils/x_private/trigger/update.ysize
execute if score @s[scores={mb.length=1..}] mb.width matches 1.. run function mblock:interface/utils/x_private/trigger/update.zsize
execute if score @s[scores={mb.bpm=5..}] mb.bpm matches 5.. run function mblock:interface/utils/x_private/trigger/update.bpm
