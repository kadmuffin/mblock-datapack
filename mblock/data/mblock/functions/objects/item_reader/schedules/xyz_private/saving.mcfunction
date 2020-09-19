scoreboard players add @s _mbtmp1 1
execute as @s[tag=_waiting] run playsound item.bottle.fill block @a ~ ~ ~ 1 1.85
tag @s remove _waiting

tag @e[tag=mplayer_block] remove mplayer_block
tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block

scoreboard players set #min_mov sload_tick 3
execute if entity @s[tag=self_align] run scoreboard players set #min_mov sload_tick 0

execute at @s positioned ~ ~-1 ~ run function song_load:method/save

kill @s