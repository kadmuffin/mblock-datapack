# > On Every Block
#
# Put here any code that should be run
# on each block.
#
# Avaliable tags:
# - "on_side"
# - "on_side_center"
# - "on_center"
# - "on_corner"
# - "on_start"
# - "on_end"
# - "on_top"
# - "on_bottom"
#

# Example code (setblock blue wool)
#setblock ~ ~ ~ blue_wool
#execute as @s[tag=!on_side,tag=!on_start,tag=!on_end] if entity @a[distance=0..25] run particle fishing ~ ~ ~

execute as @s[tag=_summon_player] run function mblock:objects/music_player/plugins/note_player/xyz_private/summon_sequence
execute as @s[tag=!_summon_player,tag=on_bottom] if entity @p[gamemode=creative] if block ~ ~-1 ~ air if block ~ ~-2 ~ air run setblock ~ ~-1 ~ stripped_spruce_wood


execute if entity @s[tag=on_bottom,tag=!on_side] run function mblock:objects/music_player/plugins/item_events/note_block_load_area_parser
