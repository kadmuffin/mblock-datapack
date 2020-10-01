playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2
scoreboard players add @s mb.menu.tmp 1
execute unless score @s mb.menu.tmp matches 0..2 run scoreboard players set @s mb.menu.tmp 0

tellraw @s[scores={mb.menu.tmp=0}] ["",{"text":"Language Switched to: "},{"text":"Noteblock Count","color":"gold"},{"text":"."}]
tellraw @s[scores={mb.menu.tmp=1}] ["",{"text":"Language Switched to: "},{"text":"C,D,E,F Notes","color":"gold"},{"text":"."}]
tellraw @s[scores={mb.menu.tmp=2}] ["",{"text":"Language Switched to: "},{"text":"Do,Re,Mi,Fa Notes","color":"gold"},{"text":"."}]