execute if score .tick mb.menu.page matches 6.. run scoreboard players set .tick mb.menu.page 0
scoreboard players add .tick mb.menu.page 1

execute if score .tick mb.menu.page matches 6.. run function mblock:interface/utils/triggers_loop

execute if score .tick mb.menu.page matches 6.. as @a[tag=__menu] at @s if score @s mb.menu.lang matches ..-1 run scoreboard players set @s mb.menu.lang 0
execute if score .tick mb.menu.page matches 6.. as @a[tag=__menu] at @s if score @s mb.menu.lang > #max_lang mb.menu.lang run scoreboard players set @s mb.menu.lang 0
execute as @a[tag=__menu] at @s if entity @e[tag=music_player,distance=0..5,limit=1] at @e[tag=music_player,distance=0..5,sort=nearest,limit=1] unless entity @e[tag=player_open,distance=0..1,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -25s, CustomName: '"§9Selected Player"', CustomNameVisible: 1b, Particle: "block air", Tags: [player_open]}

execute if score .tick mb.menu.page matches 6.. as @a[tag=__menu] at @s unless score @s mb.menu.lang matches 1.. run function mblock:interface/langs/english/main

execute if score .tick mb.menu.page matches 6.. as @a[tag=__menu] at @s if score @s mb.menu.lang matches 1 run function mblock:interface/langs/spanish/main

execute as @a[tag=__menu,tag=!load_menu,tag=!load_question] at @s unless entity @e[tag=music_player,sort=nearest] run function mblock:interface/utils/close_menu
