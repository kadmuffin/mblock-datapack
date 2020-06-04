scoreboard players add estimated_zsize _array_tmp 1
scoreboard players remove length _array_tmp 1

tag @s remove magenta_terracotta

function mblock:block/get_tone
function mblock:block/get_sound

execute as @s[tag=!end_recursion,tag=counting_air] run scoreboard players add air_count _array_tmp 1
execute as @s[tag=!end_recursion,tag=counting_air] run scoreboard players add total_air _array_tmp 1

execute as @s[tag=!end_recursion,tag=counting_air] unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=!end_recursion,tag=counting_air] unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=!end_recursion,tag=counting_air] unless score #tone _mbtmp matches -1 run scoreboard players set air_count _array_tmp 0
execute as @s[tag=!end_recursion,tag=counting_air] unless score #tone _mbtmp matches -1 run tag @s remove counting_air

execute as @s[tag=!end_recursion,tag=counting_air] if score @s aparse.zsize <= estimated_zsize _array_tmp store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=!end_recursion,tag=counting_air] if score @s aparse.zsize <= estimated_zsize _array_tmp run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=!end_recursion,tag=counting_air] if score @s aparse.zsize <= estimated_zsize _array_tmp run scoreboard players set air_count _array_tmp 0
execute as @s[tag=!end_recursion,tag=counting_air] if score @s aparse.zsize <= estimated_zsize _array_tmp run tag @s remove counting_air

execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ magenta_glazed_terracotta store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ magenta_glazed_terracotta run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players set air_count _array_tmp 0
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ magenta_glazed_terracotta run tag @s remove counting_air

execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ black_glazed_terracotta store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ black_glazed_terracotta run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ black_glazed_terracotta run scoreboard players set air_count _array_tmp 0
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ black_glazed_terracotta run tag @s remove counting_air

execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ purple_glazed_terracotta store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ purple_glazed_terracotta run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ purple_glazed_terracotta run scoreboard players set air_count _array_tmp 0
execute as @s[tag=!end_recursion,tag=counting_air] if block ~ ~ ~ purple_glazed_terracotta run tag @s remove counting_air


execute if block ~ ~ ~ black_glazed_terracotta run tag @s add end_recursion
execute if block ~ ~ ~ black_glazed_terracotta run data modify entity @s Item.tag.data append value {event: 1}
execute if block ~ ~ ~ purple_glazed_terracotta run tag @s add end_recursion
execute if block ~ ~ ~ purple_glazed_terracotta run data modify entity @s Item.tag.data append value {event: 2}

execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/store_magenta
execute if block ~ ~ ~ magenta_glazed_terracotta run data modify entity @s Item.tag.tmp set value {event: 3, dir: -1}
execute if block ~ ~ ~ magenta_glazed_terracotta store result entity @s Item.tag.tmp.dir int 1 run scoreboard players get @s _aparse_tmp5
execute if block ~ ~ ~ magenta_glazed_terracotta run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players operation estimated_zsize _array_tmp -= @s aparse.zsize
execute if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players operation length _array_tmp = @s aparse.zsize
execute if block ~ ~ ~ magenta_glazed_terracotta run tag @s add not_align
execute if block ~ ~ ~ magenta_glazed_terracotta run tag @s add disable_redraw
execute if block ~ ~ ~ magenta_glazed_terracotta run tag @s add magenta_terracotta
execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/set_dir_values
execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/update_dir_values



execute as @s[tag=!end_recursion] unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {tone:-1,sound:-1}
execute as @s[tag=!end_recursion] unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.tone int 1 run scoreboard players get #tone _mbtmp
execute as @s[tag=!end_recursion] unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.sound int 1 run scoreboard players get #sound _mbtmp



execute as @s[tag=!end_recursion,tag=!counting_air,tag=!magenta_terracotta] if score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {air:-1}
execute as @s[tag=!end_recursion,tag=!counting_air,tag=!magenta_terracotta] if score #tone _mbtmp matches -1 run tag @s add counting_air

execute as @s[tag=!end_recursion] unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp

execute as @s[tag=!end_recursion] if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=!end_recursion] if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks

execute as @s[tag=!end_recursion] if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=!end_recursion] if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks
