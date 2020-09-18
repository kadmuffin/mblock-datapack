scoreboard players set #min_mov sload_tick 3
execute if entity @s[tag=self_align] run scoreboard players set #min_mov sload_tick 0


execute as @s[tag=self_align] if entity @e[tag=mplayer_block,tag=!look_neg,scores={aparse.dir=0}] at @s positioned ~ ~-1 ~-1 run function song_load:method/load
execute as @s[tag=self_align] if entity @e[tag=mplayer_block,tag=!look_neg,scores={aparse.dir=1}] at @s positioned ~-1 ~-1 ~ run function song_load:method/load

execute as @s[tag=self_align] if entity @e[tag=mplayer_block,tag=look_neg,scores={aparse.dir=0}] at @s positioned ~ ~-1 ~1 run function song_load:method/load
execute as @s[tag=self_align] if entity @e[tag=mplayer_block,tag=look_neg,scores={aparse.dir=1}] at @s positioned ~1 ~-1 ~ run function song_load:method/load


execute as @s[tag=!self_align] at @s positioned ~ ~-1 ~ run function song_load:method/load
execute if entity @s[tag=!self_align] run tag @e[tag=z_pointer,limit=1] add copy_settings

execute as @s[tag=self_align] at @s run summon minecraft:area_effect_cloud ~ ~-1 ~ {Age: 0, Duration: 100, WaitTime: 100, Particle: "flame"}

tp @s @p
tag @s remove load_sequence
data modify entity @s PickupDelay set value 0
#data modify entity @s CustomName set value '"§8[MBlock] §6Process Started!"'
