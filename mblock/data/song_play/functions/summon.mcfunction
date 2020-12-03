summon armor_stand ~ ~ ~ {Tags: ["note_player_center", "note_player", "light_render_center", "new_note_player", "player", "mb_menu", "center", "floor"], Invisible: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:light_blue_terracotta", Count: 1b}], DisabledSlots: 72689}

scoreboard players operation @e[tag=new_note_player,limit=1] mb.true_bpm = @s mb.true_bpm
scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm = @s mb.bpm
scoreboard players operation @e[tag=new_note_player,limit=1] mb.id = @s mb.id
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.xsize = @s aparse.xsize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.ysize = @s aparse.ysize
scoreboard players operation @e[tag=new_note_player,limit=1] aparse.zsize = @s aparse.zsize
scoreboard players operation @e[tag=new_note_player,limit=1] mb.dir = @s mb.dir
scoreboard players operation @e[tag=new_note_player,limit=1] mbn.sound = @s mbn.sound
execute unless score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.bpm_accuracy
execute if score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @e[tag=new_note_player,limit=1] mb.bpm_accuracy = @s mb.max_accuracy
scoreboard players operation @e[tag=new_note_player,limit=1] mb.max_accuracy = @s mb.max_accuracy

scoreboard players set @e[tag=new_note_player,limit=1] mb.travel 0
execute as @s[tag=!note_player] run scoreboard players add @e[tag=new_note_player,limit=1] aparse.zsize 4

execute as @s[tag=copy_travel] run scoreboard players operation @e[tag=new_note_player,limit=1] mb.travel = @s mb.travel
execute as @s[tag=compress_bpm] run tag @e[tag=new_note_player,limit=1] add compress_bpm
execute as @s[tag=nbs_bpm] run tag @e[tag=new_note_player,limit=1] add nbs_bpm

tag @e[tag=new_note_player,limit=1] remove new_note_player
