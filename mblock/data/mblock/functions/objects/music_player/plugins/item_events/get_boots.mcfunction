execute as @p run function mblock:objects/music_player/plugins/entity_play/get_boots
particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
playsound minecraft:block.lava.extinguish block @a[distance=0..15] ~ ~ ~ 1 1.5
kill @s
