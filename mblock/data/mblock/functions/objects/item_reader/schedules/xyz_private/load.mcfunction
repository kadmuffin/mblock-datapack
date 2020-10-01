scoreboard players add @s _mbtmp1 1
execute as @s[tag=_waiting] run playsound item.bottle.fill block @a ~ ~ ~ 1 1.85
tag @s remove _waiting

scoreboard players set #min_mov sload_tick 3
execute if entity @s[tag=self_align] run scoreboard players set #min_mov sload_tick 0

execute as @s[tag=self_align] if entity @e[tag=mplayer_block,scores={mb.dir=0}] at @s positioned ~ ~-1 ~-1 run function song_load:method/load
execute as @s[tag=self_align] if entity @e[tag=mplayer_block,scores={mb.dir=3}] at @s positioned ~-1 ~-1 ~ run function song_load:method/load

execute as @s[tag=self_align] if entity @e[tag=mplayer_block,scores={mb.dir=1}] at @s positioned ~ ~-1 ~1 run function song_load:method/load
execute as @s[tag=self_align] if entity @e[tag=mplayer_block,scores={mb.dir=2}] at @s positioned ~1 ~-1 ~ run function song_load:method/load


execute as @s[tag=!self_align] at @s positioned ~ ~-1 ~ run function song_load:method/load
execute if entity @s[tag=!self_align] run tag @e[tag=z_pointer,limit=1] add copy_settings

execute as @s[tag=self_align] at @s run summon minecraft:area_effect_cloud ~ ~-1 ~ {Age: 0, Duration: 100, WaitTime: 100, Particle: "flame"}

execute if entity @e[tag=z_pointer] run function mblock:objects/item_reader/schedules/xyz_private/end
execute unless entity @e[tag=z_pointer] if score @s _mbtmp1 matches 2.. run function mblock:objects/item_reader/schedules/xyz_private/end