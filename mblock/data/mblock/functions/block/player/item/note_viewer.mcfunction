#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2
#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run function mblock:block/player/item/no_numbers
#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run scoreboard players set @s sneak 0
execute as @e[type=item,nbt={Item:{tag:{note:1b}}},limit=1] at @s as @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1] run playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2
execute as @e[type=item,nbt={Item:{tag:{note:1b}}},limit=1] at @s as @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1] run function mblock:block/player/item/no_numbers
execute as @e[type=item,nbt={Item:{tag:{note:1b}}},limit=1] at @s if entity @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1] run tp @s @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1]
execute as @e[type=item,nbt={Item:{tag:{note:1b}}},limit=1] at @s if entity @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Item:{tag:{note:1b}}},limit=1] at @s as @p[scores={sneak=0},nbt={OnGround:1b},dx=0,limit=1] run scoreboard players set @s sneak 0

execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] unless entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] run scoreboard players set @s sneak 0
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s run function mblock:block/player/item/note_viewer_func
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{note:1b}}}] at @s run scoreboard players set @s carrot 0
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s run tag @s add _offhand
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s run function mblock:block/player/item/note_viewer_func
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s run tag @s remove _offhand
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s run scoreboard players set @s carrot 0

scoreboard players set @s noteblock_use 0
scoreboard players set @s noteblock_use1 0