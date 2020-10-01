scoreboard players operation @a[distance=0..1] mbn.sound = @s mbn.sound
scoreboard players set @a[distance=0..1] _aparse.x 0
execute as @a[distance=0..1] run function mblock:block/player/entity/x_private/clear_old