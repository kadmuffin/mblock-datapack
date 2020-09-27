tag @s[tag=skip_x] add __skip_x
tag @s[tag=skip_x] remove skip_x

tag @s[tag=!__skip_x] add skip_x
tag @s remove __skip_x

execute unless score @s[tag=!skip_x] _box.travel >= @s box.z run function mblock:box/utils/summon/y_pointer
execute if score @s[tag=skip_x] _box.travel matches 0 run function mblock:box/utils/summon/y_pointer

execute if score @s _box.travel >= @s box.z run kill @s
execute unless score @s _box.travel >= @s box.z run function mblock:box/utils/tp/move.z

function mblock:objects/area_parser/lib/on_step_call

execute at @s unless entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..50] run kill @s
execute at @s if entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..70] run kill @s