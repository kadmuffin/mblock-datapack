scoreboard players remove length _array_tmp 1

function mblock:block/get_tone
function mblock:block/get_sound

execute as @s[tag=counting_air] run scoreboard players add air_count _array_tmp 1
execute as @s[tag=counting_air] run scoreboard players add total_air _array_tmp 1

execute as @s[tag=counting_air] unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.air int 1 run scoreboard players get air_count _array_tmp
execute as @s[tag=counting_air] unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp
execute as @s[tag=counting_air] unless score #tone _mbtmp matches -1 run scoreboard players set air_count _array_tmp 0
execute as @s[tag=counting_air] unless score #tone _mbtmp matches -1 run tag @s remove counting_air

execute unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {tone:-1,sound:-1}
execute unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.tone int 1 run scoreboard players get #tone _mbtmp
execute unless score #tone _mbtmp matches -1 store result entity @s Item.tag.tmp.sound int 1 run scoreboard players get #sound _mbtmp

execute as @s[tag=!counting_air] if score #tone _mbtmp matches -1 run data modify entity @s Item.tag.tmp set value {air:-1}
execute as @s[tag=!counting_air] if score #tone _mbtmp matches -1 run tag @s add counting_air

execute unless score #tone _mbtmp matches -1 run data modify entity @s Item.tag.data append from entity @s Item.tag.tmp

execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute if score length _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks

execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/loop_in_blocks
execute if score length _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/loop_in_blocks