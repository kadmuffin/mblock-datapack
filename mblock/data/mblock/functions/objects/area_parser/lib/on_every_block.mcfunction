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
execute as @s[tag=_summon_player] run summon armor_stand ~ ~ ~ {Tags:["note_player", "new_note_player","player","disable_redraw"],Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id: "minecraft:blue_terracotta", Count:1b}],DisabledSlots:72689}
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] mb.true_bpm = @s mb.true_bpm
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] mb_id = @s mb_id
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] aparse.xsize = @s aparse.xsize
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] aparse.ysize = @s aparse.ysize
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] aparse.zsize = @s mb_tmpz
execute as @s[tag=_summon_player] run scoreboard players add @e[tag=new_note_player,limit=1] aparse.zsize 1
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] aparse.dir = @s aparse.dir
execute as @s[tag=_summon_player,tag=copy_travel] run scoreboard players operation @e[tag=new_note_player,limit=1] mb_ztravel = @s mb_ztravel
execute as @s[tag=_summon_player] run scoreboard players operation @e[tag=new_note_player,limit=1] mb_tmp2 = @s mb_tmp2
execute as @s[tag=_summon_player,tag=on_z_center] run tag @e[tag=new_note_player,limit=1] add note_player_center
execute as @s[tag=_summon_player,tag=look_neg] run tag @e[tag=new_note_player,limit=1] add look_neg
execute as @s[tag=_summon_player] run tag @e[tag=new_note_player,limit=1] remove new_note_player

execute as @s[tag=!_summon_player,tag=on_bottom] if block ~ ~-1 ~ air run setblock ~ ~-1 ~ stripped_spruce_wood


tag @s[tag=on_bottom,tag=!on_side] add disable_bpm
tag @s[tag=on_bottom,tag=!on_side] add disable_size
execute if entity @s[tag=on_bottom,tag=!on_side] as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add self_align
execute if entity @s[tag=on_bottom,tag=!on_side] as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute if entity @s[tag=on_bottom,tag=!on_side] as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run playsound minecraft:block.ender_chest.open block @a[distance=0..25] ~ ~ ~ 1 0.7
execute if entity @s[tag=on_bottom,tag=!on_side] as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/extract_song
execute if entity @s[tag=on_bottom,tag=!on_side] as @e[type=item,distance=0..0.8,limit=1,nbt={Item:{id:"minecraft:note_block"},OnGround:1b},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add _loaded
tag @s[tag=on_bottom,tag=!on_side] remove disable_bpm
tag @s[tag=on_bottom,tag=!on_side] remove disable_size
