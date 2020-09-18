particle minecraft:sneeze ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block
playsound minecraft:block.ender_chest.open block @a[distance=0..15] ~ ~ ~ 1 1.5
function mblock:objects/item_reader/save_song
