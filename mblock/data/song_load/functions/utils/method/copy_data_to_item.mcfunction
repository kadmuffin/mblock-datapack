summon item ~ ~ ~ {Item: {id: "enchanted_book", Count: 1b, tag: {contains_song: 1b, song: {xsize: -1, ysize: -1, zsize: -1, bpm: -1}, display: {Name: ""}}}, Tags: [saved_song, _saved], PickupDelay: 0s}

execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.xsize int 1 run scoreboard players get song_xsize sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.ysize int 1 run scoreboard players get song_ysize sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.zsize int 1 run scoreboard players get song_length sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.bpm int 1 run scoreboard players get song_bpm sload

data modify entity @e[tag=saved_song,limit=1] Item.tag.display.Name set from entity @e[tag=z_pointer,limit=1] CustomName
data modify entity @e[tag=saved_song,limit=1] Item.tag.data set from entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data

tag @e[tag=saved_song] remove saved_song