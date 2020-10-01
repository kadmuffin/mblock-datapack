#scoreboard players set @s[tag=!disable_redirection,tag=!direction_changed] _aparse.z 1
#scoreboard players set @s[tag=!disable_redirection,tag=direction_changed] _aparse.z 1
#scoreboard players add @s[tag=!disable_redirection,tag=!direction_changed] aparse.zsize 2

scoreboard players set @s _aparse.z 0
tag @s[tag=direction_changed] remove no_line
tag @s[tag=!direction_changed] add no_line