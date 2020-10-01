scoreboard players operation song_length sload = @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
scoreboard players operation song_xsize sload = @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
scoreboard players operation song_xsize sload += @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
scoreboard players remove song_xsize sload 1

scoreboard players operation song_ysize sload = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
scoreboard players operation song_bpm sload = @e[tag=music_player,sort=nearest,limit=1] mb.bpm
scoreboard players operation gb_sound sload = @e[tag=music_player,sort=nearest,limit=1] mb_tmp2

scoreboard players operation #middle sload_tmp2 = song_xsize sload
scoreboard players operation #middle sload_tmp2 /= #2 sload

execute if entity @e[tag=mblock_player,tag=nbs_bpm,limit=1] run tag @s add nbs_bpm
execute if entity @e[tag=mblock_player,tag=compress_bpm,limit=1] run tag @s add compress_bpm

function song_load:utils/summon/summon
execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box

data modify entity @e[tag=z_pointer,limit=1] CustomName set value "{\"text\":\"§bNew Song!\"}"
data modify entity @e[tag=z_pointer,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data set value {notes: [], events: []}

tag @e[tag=z_pointer,limit=1] add mb_menu
tag @e[tag=z_pointer,limit=1] add save
tag @e[tag=z_pointer,limit=1] add asking
