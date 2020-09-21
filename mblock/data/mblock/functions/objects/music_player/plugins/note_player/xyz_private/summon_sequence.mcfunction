summon armor_stand ~ ~ ~ {Tags: ["note_player", "new_note_player", "player", "disable_redraw", "mb_menu"], Invisible: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:blue_terracotta", Count: 1b}], DisabledSlots: 72689}

scoreboard players operation @e[tag=new_note_player,limit=1] mb.true_bpm = @s mb.true_bpm
scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm = @s mb.bpm
scoreboard players operation @e[tag=new_note_player,limit=1] mb_id = @s mb_id
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.zsize = @s mb_tmpz
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.dir = @s aparse.dir
scoreboard players operation @e[tag=new_note_player,limit=1] mb_tmp2 = @s mb_tmp2
execute unless score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.bpm_accuracy
execute if score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.max_accuracy
scoreboard players operation @e[tag=new_note_player,limit=1] mb.max_accuracy = @s mb.max_accuracy

scoreboard players set @e[tag=new_note_player,limit=1] mb_ztravel 0
scoreboard players add @e[tag=new_note_player,limit=1] aparse.zsize 4

execute as @s[tag=copy_travel] run scoreboard players operation @e[tag=new_note_player,limit=1] mb_ztravel = @s mb_ztravel
execute as @s[tag=on_x_center] run tag @e[tag=new_note_player,limit=1] add camera_center
execute as @s[tag=on_z_center] run tag @e[tag=new_note_player,limit=1] add note_player_center
execute as @s[tag=look_neg] run tag @e[tag=new_note_player,limit=1] add look_neg
execute as @s[tag=middle_layer] run tag @e[tag=new_note_player,limit=1] add middle_layer
execute as @s[scores={aparse.xsize=..4}] run tag @e[tag=new_note_player,limit=1] add disable_extended
execute as @s[tag=compress_bpm] run tag @e[tag=new_note_player,limit=1] add compress_bpm
execute as @s[tag=nbs_bpm] run tag @e[tag=new_note_player,limit=1] add nbs_bpm

execute as @e[tag=new_note_player,limit=1] run function mblock:objects/music_player/plugins/note_player/utils/assign_tags
execute as @e[tag=new_note_player,limit=1] run function mblock:objects/music_player/plugins/note_player/utils/update_look

tag @e[tag=new_note_player,limit=1] remove new_note_player
