tag @s[tag=_menu_open] add __menu_open
tellraw @s[tag=_menu_open] {"text":"\n\n\n\n\n\n\n\n\n\n\n"}
tag @s[tag=_menu_open] remove _menu_open
tag @s[tag=!_menu_open,tag=!__menu_open] add _menu_open
tag @s remove __menu_open


tag @s remove _no_block
scoreboard players set @s noteblock_use 0
scoreboard players set @s noteblock_use1 0