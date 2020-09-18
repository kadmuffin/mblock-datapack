execute if entity @s[tag=self_align] run particle minecraft:witch ~ ~-1.3 ~ 0.1 0.1 0.1 0.1 10
execute if entity @s[tag=!self_align] run particle minecraft:witch ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
execute if entity @s[tag=!self_align] run tag @e[tag=music_player,sort=nearest,limit=1] add mplayer_block
playsound minecraft:block.ender_chest.open block @a[distance=0..15] ~ ~ ~ 1 0.7
function mblock:objects/item_reader/extract_song
tag @s add _loaded
