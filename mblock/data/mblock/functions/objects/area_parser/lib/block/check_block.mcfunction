function mblock:objects/area_parser/lib/utils/set_tags

function mblock:objects/area_parser/lib/on_every_block
execute as @s[tag=is_air] run function mblock:objects/area_parser/lib/on_block_air
execute as @s[tag=!is_air] run function mblock:objects/area_parser/lib/on_block_not_air
