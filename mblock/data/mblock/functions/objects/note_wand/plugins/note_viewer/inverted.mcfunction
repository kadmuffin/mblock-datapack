execute as @s[tag=_off_hand,tag=!holding_block,tag=!sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_get/play_note
execute as @s[tag=_off_hand,tag=!holding_block,tag=sneaking,tag=!clicking] unless entity @e[tag=_toneName,distance=0..1] run function mblock:objects/note_wand/plugins/note_get/play_note
