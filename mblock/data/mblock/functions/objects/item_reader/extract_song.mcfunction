execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run summon item ~ ~ ~ {Tags:[song],Item:{id:"minecraft:grass_block",Count:1b},PickupDelay:-32768s,NoGravity:1b}
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~ ~
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run data merge entity @s {NoGravity:1b}
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run data merge entity @s {Motion:[0.0,0.0,0.0]}

execute as @s[tag=self_align] run summon item ~ ~ ~ {Tags:[song,self_align],Item:{id:"minecraft:note_block",Count:1b},PickupDelay:-32768s,NoGravity:1b}

execute if entity @s[tag=disable_bpm] run tag @e[tag=song] add disable_bpm
execute if entity @s[tag=disable_size] run tag @e[tag=song] add disable_size
execute if entity @s[tag=disable_bpm,tag=disable_size] run tag @e[tag=song] add on_area

data modify entity @e[tag=song,limit=1] Item set from entity @s Item

tag @s add _loaded

execute as @e[tag=song] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/prepare_loop

data modify entity @s PickupDelay set value 0s
tp @s @p[nbt={OnGround:1b},dx=0,limit=1]
