scoreboard players set @s _mb_z_trav 0
execute if entity @s[tag=!_box] at @e[tag=player_child] if score @s _mb_id = @e[tag=player_child,dx=0] _mb_id run kill @e[tag=player_child]
kill @s