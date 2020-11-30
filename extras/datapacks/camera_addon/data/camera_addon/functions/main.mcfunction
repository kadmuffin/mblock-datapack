execute as @a[gamemode=spectator] at @s unless entity @e[tag=selected_cplayer] run gamemode creative
execute as @a[gamemode=creative] at @s if entity @e[tag=selected_cplayer] run tag @s add __menu
execute as @a[gamemode=creative] at @s if entity @e[tag=selected_cplayer] run gamemode spectator
execute as @a[gamemode=spectator] at @s positioned as @e[tag=selected_cplayer,sort=nearest,limit=1] run tp ~ ~1.3 ~