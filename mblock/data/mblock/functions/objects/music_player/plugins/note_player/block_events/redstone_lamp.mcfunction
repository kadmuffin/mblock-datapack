setblock ~ ~ ~ redstone_block
execute unless entity @e[tag=_run_redstone,distance=0..2,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_run_redstone"]}
