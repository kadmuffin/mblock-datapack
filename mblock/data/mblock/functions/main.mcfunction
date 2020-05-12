execute unless entity @e[tag=player_block] as @e[type=minecraft:item_frame,tag=!player_block,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] at @s if block ~ ~-1 ~ note_block run function mblock:block/player/player_init
execute as @e[type=minecraft:item_frame,tag=player_block,nbt=!{Item:{id:"minecraft:heart_of_the_sea"}}] at @s run function mblock:block/player/player_remove

#execute at @e[tag=player_block] as @a[tag=_menu_open,tag=!hitting_player] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a[tag=_menu_open] run function mblock:block/player/menu

execute at @e[tag=player_block] if block ~1 ~-1 ~ #minecraft:buttons[powered=true] run scoreboard players set #dir_g _mbtmp 0
execute at @e[tag=player_block] if block ~1 ~-1 ~ #minecraft:buttons[powered=true] run scoreboard players set #dir_gen_g _mbtmp 0
#execute at @e[tag=player_block] if block ~1 ~-1 ~ #minecraft:buttons[powered=true] run function mblock:block/player/start

execute at @e[tag=player_block] if block ~-1 ~-1 ~ #minecraft:buttons[powered=true] run scoreboard players set #dir_g _mbtmp 1
execute at @e[tag=player_block] if block ~-1 ~-1 ~ #minecraft:buttons[powered=true] run scoreboard players set #dir_gen_g _mbtmp 0
#execute at @e[tag=player_block] if block ~-1 ~-1 ~ #minecraft:buttons[powered=true] run function mblock:block/player/start

execute at @e[tag=player_block] if block ~ ~-1 ~-1 #minecraft:buttons[powered=true] run scoreboard players set #dir_g _mbtmp 3
execute at @e[tag=player_block] if block ~ ~-1 ~-1 #minecraft:buttons[powered=true] run scoreboard players set #dir_gen_g _mbtmp 1
#execute at @e[tag=player_block] if block ~ ~-1 ~-1 #minecraft:buttons[powered=true] run function mblock:block/player/start

execute at @e[tag=player_block] if block ~ ~-1 ~1 #minecraft:buttons[powered=true] run scoreboard players set #dir_g _mbtmp 2
execute at @e[tag=player_block] if block ~ ~-1 ~1 #minecraft:buttons[powered=true] run scoreboard players set #dir_gen_g _mbtmp 1
#execute at @e[tag=player_block] if block ~ ~-1 ~1 #minecraft:buttons[powered=true] run function mblock:block/player/start

execute at @e[tag=player_block] if block ~ ~-1 ~ note_block[powered=true] run function mblock:block/player/start
execute at @e[tag=player_block] if entity @a[tag=show_box] run function mblock:block/player/box
execute at @e[tag=player_block] if entity @a[distance=0..3] run particle minecraft:dolphin ~ ~ ~ 0.4 .4 .4 0.1 1


#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2
#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run function mblock:block/player/item/no_numbers
#execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick",tag:{note:1b}}]}] at @s if score @s[nbt={OnGround:1b}] sneak matches 25.. run scoreboard players set @s sneak 0