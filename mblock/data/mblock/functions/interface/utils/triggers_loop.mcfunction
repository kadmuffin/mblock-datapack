scoreboard players enable @a mb.menu.play
execute as @a[scores={mb.menu.play=-2..}] at @s run function mblock:interface/commands/start_player
execute as @a[scores={mb.menu.play=-2..}] run scoreboard players set @s mb.menu.play -3

scoreboard players enable @a mb.menu.stop
execute as @a[scores={mb.menu.stop=-2..}] at @s run function mblock:interface/commands/end_player
execute as @a[scores={mb.menu.stop=-2..}] run scoreboard players set @s mb.menu.stop -3

scoreboard players enable @a mb.menu.bpm
execute as @a[scores={mb.menu.bpm=-2..}] at @s if entity @e[tag=music_player] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.75 1.3
execute as @a[scores={mb.menu.bpm=1..}] at @s if entity @e[tag=music_player] run scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] mb.bpm = @s mb.menu.bpm
execute as @a[scores={mb.menu.bpm=-1}] at @s if entity @e[tag=music_player] run scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] mb.bpm 5
execute as @a[scores={mb.menu.bpm=-2}] at @s if entity @e[tag=music_player] run scoreboard players add @e[tag=music_player,sort=nearest,limit=1] mb.bpm 5
execute as @a[scores={mb.menu.bpm=-2..}] run scoreboard players set @s mb.menu.bpm -3

scoreboard players enable @a mb.menu.zsize
execute as @a[scores={mb.menu.zsize=-2..}] at @s if entity @e[tag=music_player] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.75 1.6
execute as @a[scores={mb.menu.zsize=1..}] at @s if entity @e[tag=music_player] run scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.zsize = @s mb.menu.zsize
execute as @a[scores={mb.menu.zsize=-1}] at @s if entity @e[tag=music_player] run scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] aparse.zsize 1
execute as @a[scores={mb.menu.zsize=-2}] at @s if entity @e[tag=music_player] run scoreboard players add @e[tag=music_player,sort=nearest,limit=1] aparse.zsize 1
execute as @a[scores={mb.menu.zsize=-2..}] run scoreboard players set @s mb.menu.zsize -3

scoreboard players enable @a mb.menu.ysize
execute as @a[scores={mb.menu.ysize=-2..15}] at @s if entity @e[tag=music_player] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.75 1.6
execute as @a[scores={mb.menu.ysize=1..15}] at @s if entity @e[tag=music_player] run scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.ysize = @s mb.menu.ysize
execute as @a[scores={mb.menu.ysize=-1}] at @s if entity @e[tag=music_player] run scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] aparse.ysize 1
execute as @a[scores={mb.menu.ysize=-2}] at @s if entity @e[tag=music_player] run scoreboard players add @e[tag=music_player,sort=nearest,limit=1] aparse.ysize 1
execute as @a[scores={mb.menu.ysize=-2..}] run scoreboard players set @s mb.menu.ysize -3

scoreboard players enable @a mb.menu.xsize
execute as @a[scores={mb.menu.xsize=-2..15}] at @s if entity @e[tag=music_player] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 0.75 1.6
execute as @a[scores={mb.menu.xsize=1..15}] at @s if entity @e[tag=music_player] run scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.xsize = @s mb.menu.xsize
execute as @a[scores={mb.menu.xsize=-1}] at @s if entity @e[tag=music_player] run scoreboard players remove @e[tag=music_player,sort=nearest,limit=1] aparse.xsize 1
execute as @a[scores={mb.menu.xsize=-2}] at @s if entity @e[tag=music_player] run scoreboard players add @e[tag=music_player,sort=nearest,limit=1] aparse.xsize 1
execute as @a[scores={mb.menu.xsize=-2..}] run scoreboard players set @s mb.menu.xsize -3
