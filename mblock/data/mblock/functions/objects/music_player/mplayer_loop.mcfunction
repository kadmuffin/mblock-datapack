execute if entity @s[nbt=!{Item:{id:"minecraft:arrow"}}] run function mblock:objects/music_player/block/end
execute unless block ~ ~-1 ~ note_block run function mblock:objects/music_player/block/end
execute unless block ~ ~ ~ air run function mblock:objects/music_player/block/end

function mblock:objects/music_player/plugins/box_display/main
function mblock:objects/music_player/plugins/note_player/main