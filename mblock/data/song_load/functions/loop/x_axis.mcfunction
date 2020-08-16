scoreboard players add @s sload 1

execute as @e[tag=z_pointer,limit=1] run function song_load:states/load/main


tag @s[tag=skip_x] add __skip_x
tag @s[tag=skip_x] remove skip_x

tag @s[tag=!__skip_x] add skip_x
tag @s remove __skip_x

execute as @s[tag=!skip_x] unless score @e[tag=y_pointer,limit=1] sload matches 1.. run particle flame ~ ~ ~ 0 0 0 0 1

function song_load:utils/tp/move_x_pointer
