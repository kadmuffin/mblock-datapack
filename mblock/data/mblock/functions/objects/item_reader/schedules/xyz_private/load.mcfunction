tp @p[dx=0]
tag @s remove load_sequence
data modify entity @s PickupDelay set value 0
data modify entity @s CustomName set value '"§8[MBlock] §6Process Started!"'
execute at @s positioned ~ ~-1 ~ run function song_load:method/load