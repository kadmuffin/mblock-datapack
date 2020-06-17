execute if score .tick mb.menu.page matches 5.. run scoreboard players set .tick mb.menu.page 0
scoreboard players add .tick mb.menu.page 1

function mblock:interface/utils/triggers_loop

execute if score .tick mb.menu.page matches 5.. as @a[tag=__menu] unless score @s mb.menu.lang matches 1.. run function mblock:interface/langs/english/main

execute if score .tick mb.menu.page matches 5.. as @a[tag=__menu] if score @s mb.menu.lang matches 1 run function mblock:interface/langs/spanish/main

execute as @a[tag=__menu] at @s unless entity @e[tag=music_player,limit=1] run tag @s remove __menu
