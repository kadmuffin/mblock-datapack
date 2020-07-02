execute if score .tick mb.menu.page matches 9.. run scoreboard players set .tick mb.menu.page 0
scoreboard players add .tick mb.menu.page 1

execute if score .tick mb.menu.page matches 9.. run function mblock:interface/utils/triggers_loop

execute if score .tick mb.menu.page matches 9.. as @a[tag=__menu] at @s if score @s mb.menu.lang matches ..-1 run scoreboard players set @s mb.menu.lang 0
execute if score .tick mb.menu.page matches 9.. as @a[tag=__menu] at @s if score @s mb.menu.lang > #max_lang mb.menu.lang run scoreboard players set @s mb.menu.lang 0

execute if score .tick mb.menu.page matches 9.. as @a[tag=__menu] at @s unless score @s mb.menu.lang matches 1.. run function mblock:interface/langs/english/main

execute if score .tick mb.menu.page matches 9.. as @a[tag=__menu] at @s if score @s mb.menu.lang matches 1 run function mblock:interface/langs/spanish/main

execute as @a[tag=__menu] at @s unless entity @e[tag=music_player,sort=nearest] run function mblock:interface/utils/close_menu
