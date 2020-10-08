execute if score .tick mb.menu.page matches 6.. run scoreboard players set .tick mb.menu.page 0
scoreboard players add .tick mb.menu.page 1

execute as @a[tag=__menu,tag=!load_menu,tag=!load_question] at @s if entity @e[tag=mb_menu] run tag @s remove cleared_menu
execute as @a[tag=__menu,tag=!sload_menu] at @s if entity @e[tag=music_player,distance=0..5,limit=1] at @e[tag=music_player,distance=0..5,sort=nearest,limit=1] unless entity @e[tag=player_open,distance=0..1,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -25, CustomName: '"§9Selected Player"', CustomNameVisible: 1b, Particle: "block air", Tags: [player_open]}

execute unless entity @e[tag=music_player] run scoreboard players reset @a mb.id
execute if score .tick mb.menu.page matches 6.. as @a at @s run function mblock:interface/utils/other_triggers
execute if score .tick mb.menu.page matches 6.. if entity @e[tag=mb_menu] as @a[tag=__menu] at @s run function mblock:interface/loop/menu


execute as @a[tag=__menu,tag=!cleared_menu,tag=!load_menu,tag=!load_question] at @s unless entity @e[tag=mb_menu] run function mblock:interface/utils/clear_chat
execute as @a[tag=__menu,tag=!cleared_menu,tag=!load_menu,tag=!load_question] at @s unless entity @e[tag=mb_menu] run tag @s add cleared_menu

