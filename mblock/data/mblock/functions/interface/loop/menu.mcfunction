
execute unless score @s mb.menu.lang matches 0.. run scoreboard players set @s mb.menu.lang 0
execute if score @s mb.menu.lang > #max_lang mb.menu.lang run scoreboard players set @s mb.menu.lang 0

execute as @s unless score @s mb.menu.lang matches 1.. run function mblock:interface/langs/english/main
execute as @s if score @s mb.menu.lang matches 1 run function mblock:interface/langs/spanish/main
