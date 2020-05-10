execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2 
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run function mblock:block/player/item/no_numbers
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run scoreboard players set @s sneak 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s if entity @s[nbt={OnGround:0b}] run scoreboard players set @s sneak 0
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] run scoreboard players set @s sneak 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s run function mblock:block/player/item/note_viewer_func
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s run scoreboard players set @s carrot 0