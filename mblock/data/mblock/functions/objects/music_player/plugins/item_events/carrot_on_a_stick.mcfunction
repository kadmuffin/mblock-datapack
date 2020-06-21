execute if entity @s[nbt={Item:{tag:{note_wand:1b}}}] run tag @p add get_only_inverted
#execute if entity @s[nbt=!{Item:{tag:{note_wand_inverted:1b}}}] run tag @p add get_only_default

execute as @p run function mblock:objects/note_wand/get_wand
particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
playsound minecraft:block.lava.extinguish block @a[distance=0..15] ~ ~ ~ 1 1.5
kill @s
