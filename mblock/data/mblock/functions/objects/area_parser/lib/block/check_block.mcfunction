function mblock:objects/area_parser/lib/utils/set_tags

function mblock:objects/area_parser/lib/on_every_block
execute if block ~ ~ ~ air run function mblock:objects/area_parser/lib/on_block_air
execute unless block ~ ~ ~ air run function mblock:objects/area_parser/lib/on_block_not_air
