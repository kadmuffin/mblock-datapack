function mblock:objects/area_parser/lib/utils/set_tags

function mblock:objects/area_parser/lib/on_every_block
#execute as @s[tag=is_air] run function mblock:objects/area_parser/lib/on_block_air

#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ black_glazed_terracotta at @s unless block ~ ~ ~ air run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.1 5
#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ black_glazed_terracotta at @s if block ~ ~ ~ air run tag @s add destroying_block
#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ black_glazed_terracotta at @s if block ~ ~ ~ air run setblock ~ ~ ~ black_glazed_terracotta
#execute as @s[tag=on_bottom,tag=!on_end] if entity @s[tag=destroying_block] run setblock ~ ~ ~ air destroy
#execute as @s[tag=on_bottom,tag=!on_end] if entity @s[tag=destroying_block] run kill @e[type=item,nbt={Item:{id:"minecraft:black_glazed_terracotta"}},limit=1,sort=nearest]

execute as @s[tag=!on_z_center,tag=on_bottom,tag=!on_end,tag=!on_side,scores={aparse.xsize=..10}] if block ~ ~ ~ #mblock:event_block at @s unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[tag=!on_z_center,tag=on_bottom,tag=!on_end,tag=!on_side,scores={aparse.xsize=..10,aparse.dir=1},tag=look_neg] positioned ~-1 ~ ~ if block ~ ~ ~ #mblock:event_block at @s positioned ~-1 ~ ~ unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[tag=!on_z_center,tag=on_bottom,tag=!on_end,tag=!on_side,scores={aparse.xsize=..10,aparse.dir=1},tag=!look_neg] positioned ~1 ~ ~ if block ~ ~ ~ #mblock:event_block at @s positioned ~1 ~ ~ unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[tag=!on_z_center,tag=on_bottom,tag=!on_end,tag=!on_side,scores={aparse.xsize=..10,aparse.dir=0},tag=look_neg] positioned ~ ~ ~-1 if block ~ ~ ~ #mblock:event_block at @s positioned ~ ~ ~-1 unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[tag=!on_z_center,tag=on_bottom,tag=!on_end,tag=!on_side,scores={aparse.xsize=..10,aparse.dir=0},tag=!look_neg] positioned ~ ~ ~1 if block ~ ~ ~ #mblock:event_block at @s positioned ~ ~ ~1 unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4

#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ magenta_glazed_terracotta at @s unless block ~ ~ ~ air unless block ~ ~ ~ magenta_glazed_terracotta run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.1 5
#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ magenta_glazed_terracotta at @s if block ~ ~ ~ air run tag @s add destroying_block
#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ magenta_glazed_terracotta if entity @s[tag=destroying_block] run function mblock:objects/area_parser/lib/block/store_magenta_dir
#execute as @s[tag=on_bottom,tag=!on_end] if block ~ ~ ~ magenta_glazed_terracotta at @s run function mblock:objects/area_parser/lib/block/set_magenta_with_dir
#execute as @s[tag=on_bottom,tag=!on_end] if entity @s[tag=destroying_block] run setblock ~ ~ ~ air destroy
#execute as @s[tag=on_bottom,tag=!on_end] if entity @s[tag=destroying_block] run kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta"}},limit=1,sort=nearest]

#execute as @s[tag=is_air,tag=on_bottom,tag=!on_side] if block ~ ~-1 ~ #mblock:soundable run setblock ~ ~-1 ~ stripped_spruce_wood

execute as @s[tag=is_air,tag=on_side,tag=!on_side_center] run function mblock:objects/area_parser/lib/on_sides

#execute as @s[tag=!is_air] run function mblock:objects/area_parser/lib/on_block_not_air

#tag @s remove destroying_block
