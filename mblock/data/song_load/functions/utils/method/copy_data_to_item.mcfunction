summon item ~ ~ ~ {Item: {id: "enchanted_book", Count: 1b, tag: {contains_song: 1b, song: {xsize: -1, ysize: -1, zsize: -1, bpm: -1}, display: {Name: '"§bMy Song!"', Lore: ['"§7Song BPM:"', '"§9Unknown"', '"§7Song Size:"', '"§9Unknown"']}}}, Tags: [saved_song, _saved], PickupDelay: 0s}

execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.xsize int 1 run scoreboard players get song_xsize sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.ysize int 1 run scoreboard players get song_ysize sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.zsize int 1 run scoreboard players get song_length sload
execute store result entity @e[tag=saved_song,limit=1] Item.tag.song.bpm int 1 run scoreboard players get song_bpm sload
execute if score gb_sound sload matches 1.. store result entity @e[tag=saved_song,limit=1] Item.tag.song.gb_sound int 1 run scoreboard players get gb_sound sload

# Using CloudWolf method for saving Scoreboards on Items
setblock ~ ~ ~ oak_sign{Text1: '{"score":{"name":"song_bpm","objective":"sload"},"color":"blue","italic": false}', Text2: '["",{"text":"x: ","color":"blue","italic": false},{"score":{"name":"song_xsize","objective":"sload"},"color":"green","italic": false},{"text":", y: ","color":"blue","italic": false},{"score":{"name":"song_ysize","objective":"sload"},"color":"green","italic": false},{"text":", z: ","color":"blue","italic": false},{"score":{"name":"song_length","objective":"sload"},"color":"green","italic": false}]'}
data modify entity @e[tag=saved_song,limit=1] Item.tag.display.Lore[1] set from block ~ ~ ~ Text1
data modify entity @e[tag=saved_song,limit=1] Item.tag.display.Lore[3] set from block ~ ~ ~ Text2
setblock ~ ~ ~ air

data modify entity @e[tag=saved_song,limit=1] Item.tag.display.Name set from entity @e[tag=z_pointer,limit=1] CustomName
data modify entity @e[tag=saved_song,limit=1] Item.tag.data set from entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data
execute as @s[tag=nbs_bpm] run data modify entity @e[tag=saved_song,limit=1] Item.tag.song.nbs_bpm set value 1
execute as @s[tag=compress_bpm] run data modify entity @e[tag=saved_song,limit=1] Item.tag.song.comp_bpm set value 1

tp @e[tag=saved_song] @p
tag @e[tag=saved_song] remove saved_song