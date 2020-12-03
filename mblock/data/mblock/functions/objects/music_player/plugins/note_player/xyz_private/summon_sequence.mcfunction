execute as @s[tag=on_z_center] run summon armor_stand ~ ~ ~ {Tags: ["note_player_center","note_player", "new_note_player", "player", "disable_redraw", "mb_menu"], Invisible: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_terracotta", Count: 1b}], DisabledSlots: 72689}
execute as @s[tag=!on_z_center] run summon armor_stand ~ ~ ~ {Tags: ["note_player", "new_note_player", "player", "disable_redraw", "mb_menu"], Invisible: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:blue_terracotta", Count: 1b}], DisabledSlots: 72689}

scoreboard players operation @e[tag=new_note_player,limit=1] mb.id = @s mb.id
scoreboard players operation @e[tag=new_note_player,limit=1] mb.dir = @s mb.dir
scoreboard players operation @e[tag=new_note_player,limit=1] mbn.sound = @s mbn.sound
execute unless score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.bpm_accuracy
execute if score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.max_accuracy
scoreboard players operation @e[tag=new_note_player,limit=1] mb.max_accuracy = @s mb.max_accuracy

execute as @s[tag=on_z_center] run tag @e[tag=new_note_player,limit=1] add note_player_center

execute as @s[tag=middle_layer] run tag @e[tag=new_note_player,limit=1] add middle_layer
execute as @s[scores={aparse.xsize=..3}] run tag @e[tag=new_note_player,limit=1] add disable_extended

execute as @s[tag=on_z_center] run function mblock:objects/music_player/plugins/note_player/xyz_private/center_properties

tag @e[tag=new_note_player,limit=1] remove new_note_player
