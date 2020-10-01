# Plays note sound when looking at it
execute as @s[tag=!_off_hand,tag=!sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_get/play_note
execute as @s[tag=!_off_hand,tag=sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_get/play_note

# Show note name based on language setting

execute as @s unless score @s mb.menu.tmp matches 1.. unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_viewer/langs/noteblock
execute as @s[scores={mb.menu.tmp=1}] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_viewer/langs/english
execute as @s[scores={mb.menu.tmp=2}] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_viewer/langs/spanish
