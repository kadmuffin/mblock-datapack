execute if block ~ ~ ~ #planks run scoreboard players set #sound _mbtmp 1
execute if block ~ ~ ~ #sand run scoreboard players set #sound _mbtmp 2
execute if block ~ ~ ~ glass run scoreboard players set #sound _mbtmp 3
execute if block ~ ~ ~ stone run scoreboard players set #sound _mbtmp 4
execute if block ~ ~ ~ gold_block run scoreboard players set #sound _mbtmp 5
execute if block ~ ~ ~ clay run scoreboard players set #sound _mbtmp 6
execute if block ~ ~ ~ packed_ice run scoreboard players set #sound _mbtmp 7
execute if block ~ ~ ~ #wool run scoreboard players set #sound _mbtmp 8
execute if block ~ ~ ~ bone_block run scoreboard players set #sound _mbtmp 9
execute if block ~ ~ ~ iron_block run scoreboard players set #sound _mbtmp 10
execute if block ~ ~ ~ soul_sand run scoreboard players set #sound _mbtmp 11
execute if block ~ ~ ~ pumpkin run scoreboard players set #sound _mbtmp 12
execute if block ~ ~ ~ emerald_block run scoreboard players set #sound _mbtmp 13
execute if block ~ ~ ~ hay_block run scoreboard players set #sound _mbtmp 14
execute if block ~ ~ ~ glowstone run scoreboard players set #sound _mbtmp 15

execute if score #external_sounds _mbtmp matches 1.. run function mbe_sound:set_to_score