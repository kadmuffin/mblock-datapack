scoreboard players set #min_mov sload_tick 3
execute if entity @s[tag=self_align] run scoreboard players set #min_mov sload_tick 0

execute at @s positioned ~ ~-1 ~ run function song_load:method/load

tp @s @p
tag @s remove load_sequence
data modify entity @s PickupDelay set value 0
data modify entity @s CustomName set value '"§8[MBlock] §6Process Started!"'
