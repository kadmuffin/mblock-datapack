scoreboard players add @s sload 1

execute as @e[tag=z_pointer,limit=1] if entity @s[tag=load] run function song_load:states/load/main
execute as @e[tag=z_pointer,limit=1] if entity @s[tag=save] run function song_load:states/save/main


tag @s[tag=skip_x] add __skip_x
tag @s[tag=skip_x] remove skip_x

tag @s[tag=!__skip_x] add skip_x
tag @s remove __skip_x

execute as @s[tag=!skip_x] unless score @e[tag=y_pointer,limit=1] sload matches 1.. run particle flame ~ ~ ~ 0 0 0 0 1

function song_load:utils/tp/move_x_pointer
