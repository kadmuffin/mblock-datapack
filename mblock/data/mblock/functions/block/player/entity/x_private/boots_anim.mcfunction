execute as @s[tag=!anim_boots,tag=extended] run particle note ~ ~1 ~ 1 1 1 0.1 8
execute as @s[tag=!anim_boots,tag=extended] run playsound minecraft:block.note_block.bit player @a[distance=0..15] ~ ~1 ~ 1 1.65
tag @s[tag=extended] add anim_boots
execute as @s[tag=anim_boots,tag=!extended] run playsound minecraft:block.note_block.bit player @a[distance=0..15] ~ ~1 ~ 1 1.35
tag @s[tag=!extended] remove anim_boots
