playsound minecraft:block.piston.extend block @s ~ ~ ~ 0.5 2
scoreboard players add @s mb_player 1
execute unless score @s mb_player matches 0..2 run scoreboard players set @s mb_player 0

tellraw @s[scores={mb_player=0}] [{"text":"Language Switched to: "},{"text":"Noteblock Count","color":"gold"},{"text":"."}]
tellraw @s[scores={mb_player=1}] [{"text":"Language Switched to: "},{"text":"English Letters","color":"gold"},{"text":"."}]
tellraw @s[scores={mb_player=2}] [{"text":"Language Switched to: "},{"text":"Spanish Letters","color":"gold"},{"text":"."}]