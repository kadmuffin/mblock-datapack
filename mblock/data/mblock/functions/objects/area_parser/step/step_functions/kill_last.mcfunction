tag @s add checking_entities_2
execute as @e[tag=z_step] unless entity @e[tag=finished] if score @s aparse.id = @e[tag=checking_entities_2,limit=1] aparse.id run kill @s
tag @s add _show_path
tag @s add update_box
tag @s remove checking_entities_2
playsound minecraft:block.barrel.open block @a[distance=0..15] ~ ~ ~ 1 2