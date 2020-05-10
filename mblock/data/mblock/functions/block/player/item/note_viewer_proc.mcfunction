function mblock:block/get_tone

execute positioned ~ ~.5 ~ if score @s carrot matches 1 if score #tone _mbtmp matches 0.. run function mblock:block/player/item/change_tone

execute as @s[tag=!noNumbers] unless entity @e[tag=_toneName,distance=0..1] run function mblock:block/player/item/valid
execute as @s[tag=noNumbers] unless entity @e[tag=_toneName,distance=0..1] run function mblock:block/player/item/valid_2