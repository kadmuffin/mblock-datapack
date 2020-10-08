function mblock:interface/loop/trigger

scoreboard players enable @s mb.gb.box_speed
execute as @s[scores={mb.gb.box_speed=1}] run function mblock:interface/commands/increase_render_speed
execute as @s[scores={mb.gb.box_speed=1}] run scoreboard players set @s mb.gb.box_speed 0

scoreboard players enable @s mb.floor.id
execute as @s[scores={mb.floor.id=0..}] at @s run function mblock:interface/commands/change_floor_local
execute as @s[scores={mb.floor.id=0..}] run scoreboard players set @s mb.floor.id -1

scoreboard players enable @s mb.tp
execute as @s[scores={mb.tp=-2..}] at @s at @e[tag=music_player,sort=nearest,limit=1] rotated as @s run tp ~ ~3 ~
execute as @s[scores={mb.tp=-2..}] run scoreboard players set @s mb.tp -3

scoreboard players enable @s mb.play
execute as @s[scores={mb.play=-2..}] at @s run function mblock:interface/commands/start_player
execute as @s[scores={mb.play=-2..}] run scoreboard players set @s mb.play -3

scoreboard players enable @s mb.stop
execute as @s[scores={mb.stop=-2..}] at @s run function mblock:interface/commands/end_player
execute as @s[scores={mb.stop=-2..}] run scoreboard players set @s mb.stop -3

scoreboard players enable @s mb.reset_sound
execute as @s[scores={mb.reset_sound=1..}] at @s run function mblock:block/player/entity/x_private/clear_old
execute as @s[scores={mb.reset_sound=1..}] run scoreboard players set @s mb.reset_sound 0

scoreboard players enable @s mb.open
execute as @s[scores={mb.open=1..}] at @s run tag @s add __menu
execute as @s[scores={mb.open=1..}] run scoreboard players set @s mb.open 0
