scoreboard players reset @s mb.bpm_accuracy

tag @s remove music_player
tag @s add dying_item_frame

particle lava ~ ~ ~ 0.1 0.5 0.1 0.1 15

playsound minecraft:block.beacon.power_select neutral @a[distance=0..25] ~ ~ ~ 1 1.6

fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 stone replace black_glazed_terracotta

#data merge entity @s {ItemRotation:1b}

#function mblock:objects/music_player/xyz_private/store_arrow_position