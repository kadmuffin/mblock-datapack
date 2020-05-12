# Get the tone integer from the block
function mblock:objects/note_wand/plugins/note_get/main

# Find Tone Value & Changes the tone at click (depends on note_get)
execute as @s[tag=_octave_found] run function mblock:objects/note_wand/plugins/note_viewer/main
execute as @s[tag=_octave_found,tag=clicking,tag=!_off_hand] run function mblock:objects/note_wand/plugins/note_changer/main

# Returns the block to the player while on off hand and sneaking  (depends on note_get)
function mblock:objects/note_wand/plugins/give_blocks/main

# Saves the block for latter use while sneaking for 4s (depends on note_get)
execute as @s[tag=clicking,tag=_off_hand] run function mblock:objects/note_wand/plugins/save_tone/main

# Plays the example sound for the particular block
execute if block ~ ~ ~ #mblock:soundable as @s[tag=clicking,tag=!sneaking,tag=!holding_block,tag=_off_hand] run function mblock:objects/note_wand/plugins/hear_sound/main
