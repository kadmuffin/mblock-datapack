execute unless score .new_direction _aparse_tmp5 = @s aparse.dir run tag @s add direction_changed

scoreboard players set @s[tag=!disable_redirection] _aparse_tmp2 0
scoreboard players set @s[tag=disable_redirection,tag=!direction_changed] _aparse_tmp2 2
scoreboard players operation @s aparse.dir = .new_direction _aparse_tmp5
scoreboard players reset @s _aparse_tmp5
scoreboard players reset .new_direction _aparse_tmp5
tag @s[tag=!disable_redirection,tag=direction_changed,tag=look_neg,tag=!_look_neg] remove look_neg
tag @s[tag=!disable_redirection,tag=direction_changed,tag=!look_neg,tag=_look_neg] add look_neg


# Clean tags
tag @s remove dir_end
tag @s remove _look_neg
tag @s[tag=!note_player] remove direction_changed
tag @s remove disable_redirection