tag @e[tag=note_player_center,sort=nearest,limit=1] add target_note_player

execute if entity @e[tag=target_note_player] run function mblock:interface/commands/x_private/not_error
execute unless entity @e[tag=target_note_player] run function mblock:interface/commands/x_private/error

playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.4 1.4