execute if block ~ ~ ~ black_glazed_terracotta run tellraw @a {"score":{"objective":"_array_tmp","name":"internal_zsize"}}
execute if block ~ ~ ~ black_glazed_terracotta run tag @s add end_recursion
execute if block ~ ~ ~ black_glazed_terracotta run data modify entity @s Item.tag.tmp set value {event: 1, z_pos: -1}
execute if block ~ ~ ~ black_glazed_terracotta store result entity @s Item.tag.tmp.z_pos int 1 run scoreboard players get internal_zsize _array_tmp
execute if block ~ ~ ~ black_glazed_terracotta run data modify entity @s Item.tag.data.events append from entity @s Item.tag.tmp

execute if block ~ ~ ~ purple_glazed_terracotta run tag @s add end_recursion
execute if block ~ ~ ~ purple_glazed_terracotta run data modify entity @s Item.tag.tmp set value {event: 2, z_pos: -1}
execute if block ~ ~ ~ purple_glazed_terracotta store result entity @s Item.tag.tmp.z_pos int 1 run scoreboard players get internal_zsize _array_tmp
execute if block ~ ~ ~ purple_glazed_terracotta run data modify entity @s Item.tag.data.events append from entity @s Item.tag.tmp

#execute if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/item_reader/saving/events/magenta_block
