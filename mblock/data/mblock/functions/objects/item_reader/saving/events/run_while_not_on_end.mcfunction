execute as @s[tag=!counting_air,tag=!counting_tone,tag=!magenta_terracotta] if score #tone _mbtmp matches -1 run tag @s add counting_air

function #mb_plugin:save

#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {tone:-1}
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.tone byte 1 run scoreboard players get #tone _mbtmp
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 if score #sound _mbtmp matches 1.. store result entity @s Item.tag.tmp.sound byte 1 run scoreboard players get #sound _mbtmp
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 if score #sound _mbtmp matches 1.. if score #sound_dir _mbtmp matches 2.. unless block ~ ~-1 ~ #mblock:replace_enabled_blocks unless block ~ ~1 ~ #mblock:replace_enabled_blocks store result entity @s Item.tag.tmp.sound_dir int 1 run scoreboard players get #sound_dir _mbtmp
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 run scoreboard players operation #tone_id _array_tmp = #tone _mbtmp
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 run scoreboard players operation #sound_id _array_tmp = #sound _mbtmp
#execute as @s[tag=!counting_air,tag=!magenta_terracotta,tag=!counting_tone] unless score #tone _mbtmp matches -1 run tag @s add counting_tone

execute as @s[tag=!counting_air,tag=!counting_tone] unless score #tone _mbtmp matches -1 run scoreboard players operation #tone_id _array_tmp = #tone _mbtmp
execute as @s[tag=!counting_air,tag=!counting_tone] unless score #tone _mbtmp matches -1 run scoreboard players operation #sound_id _array_tmp = #sound _mbtmp
execute as @s[tag=!counting_air,tag=!counting_tone] unless score #tone _mbtmp matches -1 run tag @s add counting_tone

#execute unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {tone:-1,sound:-1}
#execute unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.tone byte 1 run scoreboard players get #tone _mbtmp
#execute unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.sound byte 1 run scoreboard players get #sound _mbtmp
#execute unless score #tone _mbtmp matches -1 if score #sound _mbtmp matches 1.. if score #sound_dir _mbtmp matches 2.. unless block ~ ~-1 ~ #mblock:replace_enabled_blocks unless block ~ ~1 ~ #mblock:replace_enabled_blocks store result entity @s Item.tag.tmp.sound_dir int 1 run scoreboard players get #sound_dir _mbtmp

#execute unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.z_data append from entity @s Item.tag.tmp

execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks

execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks
