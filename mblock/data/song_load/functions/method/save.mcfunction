scoreboard players operation song_length sload = @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
scoreboard players remove song_length sload 4

scoreboard players operation song_xsize sload = @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
scoreboard players operation song_xsize sload += @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
scoreboard players add song_xsize sload 1

scoreboard players operation song_ysize sload = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
scoreboard players operation song_bpm sload = @e[tag=music_player,sort=nearest,limit=1] mb.bpm

scoreboard players operation #middle sload_tmp2 = song_xsize sload
scoreboard players operation #middle sload_tmp2 /= #2 sload
#scoreboard players remove #middle sload_tmp2 1

function song_load:utils/summon/summon
execute if entity @s[tag=self_align] run tag @e[tag=z_pointer] add in_box

data modify entity @e[tag=z_pointer,limit=1] CustomName set value "{\"text\":\"§aNew Song!\"}"
data modify entity @e[tag=z_pointer,limit=1] CustomName set from entity @s Item.tag.display.Name
data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data set value {notes: [], events: []}

tag @e[tag=z_pointer,limit=1] add save
tag @e[tag=z_pointer,limit=1] add asking
