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

scoreboard players add @s[tag=_summon_player] _aparse_tmp3 1

execute as @s[tag=_summon_player,scores={_aparse_tmp3=2..,aparse.xsize=4..}] run function mblock:objects/music_player/plugins/note_player/xyz_private/summon_sequence
execute as @s[tag=_summon_player,scores={_aparse_tmp3=1..,aparse.xsize=..3}] run tag @s add disable_extended
execute as @s[tag=_summon_player,scores={_aparse_tmp3=1..,aparse.xsize=..3}] run function mblock:objects/music_player/plugins/note_player/xyz_private/summon_sequence

scoreboard players set @s[tag=_summon_player,scores={_aparse_tmp3=2..,aparse.xsize=4..}] _aparse_tmp3 0
scoreboard players set @s[tag=_summon_player,scores={_aparse_tmp3=1..,aparse.xsize=..3}] _aparse_tmp3 0


execute as @s[tag=!_summon_player,tag=on_bottom] unless score @s _mb.floor matches 1.. run function mblock:objects/area_parser/lib/block/floors/set_default_floor
execute as @s[tag=!_summon_player,tag=on_bottom] if score @s _mb.floor matches 1.. run function mblock:objects/area_parser/lib/block/floors/main


execute if entity @s[tag=on_bottom,tag=!on_side] run function mblock:objects/music_player/plugins/item_events/note_block_load_area_parser
