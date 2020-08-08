scoreboard players add #sx_count sload_tmp 1
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: [x_pointer]}

execute unless score #sx_count sload_tmp >= song_ysize sload if score #sx_count sload_tmp matches ..30 positioned ~ ~1 ~ run function song_load:utils/summon/x_private/x_axis