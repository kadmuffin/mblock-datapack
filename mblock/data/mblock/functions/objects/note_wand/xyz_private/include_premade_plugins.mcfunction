execute as @s[nbt={OnGround: 1b},tag=sneaking,tag=clicking,tag=!_off_hand,tag=!_using_inverted] if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[tag=music_player,distance=0..1] run function mblock:interface/open
execute as @s[nbt={OnGround: 1b},tag=sneaking,tag=clicking,tag=_off_hand,tag=_using_inverted] if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[tag=music_player,distance=0..1] run function mblock:interface/open
execute as @s[nbt={OnGround: 1b},tag=!_off_hand,tag=!_using_inverted] if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[tag=music_player,distance=0..1] unless entity @e[tag=_toneName,distance=0..1] run summon area_effect_cloud ~ ~-.25 ~ {CustomName: '"§aShift + Right Click"', CustomNameVisible: 1b, Age: -25, Particle: "block air", Tags: ["_toneName"]}
execute as @s[nbt={OnGround: 1b},tag=_off_hand,tag=_using_inverted] if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[tag=music_player,distance=0..1] unless entity @e[tag=_toneName,distance=0..1] run summon area_effect_cloud ~ ~-.25 ~ {CustomName: '"§aShift + Right Click"', CustomNameVisible: 1b, Age: -25, Particle: "block air", Tags: ["_toneName"]}

# Get the tone integer from the block
function mblock:objects/note_wand/plugins/note_get/main

# Find Tone Value & Changes the tone at click (depends on note_get)
execute as @s[tag=_octave_found] run function mblock:objects/note_wand/plugins/note_viewer/main
execute as @s[tag=_octave_found,tag=clicking] run function mblock:objects/note_wand/plugins/note_changer/main

# Returns the block to the player while on off hand and sneaking  (depends on note_get)
#function mblock:objects/note_wand/plugins/give_blocks/main
execute as @s[tag=_octave_found,tag=_off_hand,tag=clicking,tag=!holding_block] run function mblock:objects/note_wand/plugins/note_get/play_note
execute as @s[tag=!_off_hand,tag=holding_block] run function mblock:objects/note_wand/plugins/save_tone/forget_tone

# Saves the block for latter use while sneaking for 4s (depends on note_get)
execute as @s[tag=clicking,tag=_off_hand] positioned ~ ~1 ~ unless entity @e[tag=music_player,distance=0..1,limit=1] positioned ~ ~-1 ~ run function mblock:objects/note_wand/plugins/save_tone/main
execute as @s[tag=_off_hand,tag=holding_block] positioned ~ ~1 ~ unless entity @e[tag=music_player,distance=0..1,limit=1] positioned ~ ~-1 ~ if block ~ ~1 ~ air positioned ~ ~.5 ~ run function mblock:objects/note_wand/plugins/save_tone/tone_show

# Plays the example sound for the particular block
execute if block ~ ~ ~ #mblock:soundable as @s[tag=clicking,tag=!sneaking,tag=!holding_block,tag=!_off_hand] run function mblock:objects/note_wand/plugins/hear_sound/main

# Rotates the magenta glazed terracotta block
function mblock:objects/note_wand/plugins/rotate_magenta/main
