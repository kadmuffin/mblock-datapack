execute as @s[nbt={OnGround:1b},tag=clicking,tag=sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/store_magenta
execute as @s[nbt={OnGround:1b},tag=clicking,tag=sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run tag @s add setted
execute as @s[nbt={OnGround:1b},tag=clicking,tag=sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run setblock ~ ~ ~ black_glazed_terracotta
execute as @s[nbt={OnGround:1b},tag=!setted,tag=clicking,tag=sneaking,tag=!_off_hand] if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/area_parser/lib/block/set_magenta
tag @s remove setted

execute as @s[tag=clicking,tag=!sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/store_magenta
execute as @s[tag=clicking,tag=!sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players add @s _aparse_tmp5 1
execute as @s[tag=clicking,tag=!sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players set @s[scores={_aparse_tmp5=4..}] _aparse_tmp5 0
execute as @s[tag=clicking,tag=!sneaking,tag=!_off_hand] if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/lib/block/set_magenta
