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
function mblock:objects/area_parser/checks/utils/set_tags

scoreboard players add @s _aparse.tmp3 1

execute as @s[scores={_aparse.tmp3=2..,aparse.xsize=4..}] run function mblock:objects/music_player/plugins/note_player/xyz_private/summon_sequence
execute as @s[scores={_aparse.tmp3=1..,aparse.xsize=..3}] run tag @s add disable_extended
execute as @s[scores={_aparse.tmp3=1..,aparse.xsize=..3}] run function mblock:objects/music_player/plugins/note_player/xyz_private/summon_sequence

scoreboard players set @s[scores={_aparse.tmp3=2..,aparse.xsize=4..}] _aparse.tmp3 0
scoreboard players set @s[scores={_aparse.tmp3=1..,aparse.xsize=..3}] _aparse.tmp3 0