execute store result score #sound _mbtmp run data get entity @s ArmorItems[3].tag.song.gb_sound
execute at @e[tag=mplayer_block,limit=1] positioned ~ ~-2 ~ run function mblock:sound/sounds/set_sound_block
