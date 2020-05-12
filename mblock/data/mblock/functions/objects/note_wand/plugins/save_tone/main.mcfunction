execute if entity @s[tag=sneaking] if block ~ ~ ~ #mblock:octaves run function mblock:objects/note_wand/plugins/save_tone/save_sequence
execute unless block ~ ~ ~ #mblock:octaves if entity @s[scores={_mbtmp1=0..}] run function mblock:objects/note_wand/plugins/save_tone/load_sequence
