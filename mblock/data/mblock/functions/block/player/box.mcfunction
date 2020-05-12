execute unless entity @e[tag=_box] as @s at @s run function mblock:block/player/box_summon

execute as @e[tag=_box] at @s if entity @a[tag=show_box,distance=0..90] run function mblock:block/player/box_tp