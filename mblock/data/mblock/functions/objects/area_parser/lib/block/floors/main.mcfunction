execute as @s[tag=!_summon_player,tag=on_bottom] if score @s _mb.floor matches 1 run function mblock:objects/area_parser/lib/block/floors/set_grass_block
execute as @s[tag=!_summon_player,tag=on_bottom] if score @s _mb.floor matches 2 run function mblock:objects/area_parser/lib/block/floors/set_smooth_stone
execute as @s[tag=!_summon_player,tag=on_bottom] if score @s _mb.floor matches 3 run function mblock:objects/area_parser/lib/block/floors/set_stone_bricks
execute as @s[tag=!_summon_player,tag=on_bottom] if score @s _mb.floor matches 4 run function mblock:objects/area_parser/lib/block/floors/set_dark_prismarine
