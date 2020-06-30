execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item: {id: "minecraft:carrot_on_a_stick"}}] at @s run function mblock:objects/music_player/plugins/item_events/carrot_on_a_stick
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item: {id: "minecraft:leather_boots"}}] at @s run function mblock:objects/music_player/plugins/item_events/get_boots
execute at @s as @e[type=item,tag=!_loaded,distance=0..1,limit=1,nbt={Item: {id: "minecraft:enchanted_book"}},nbt={Item: {tag: {contains_song: 1b}}},tag=!_loaded,tag=!_saved] at @s unless entity @e[tag=_ls_scheduled,distance=0..2] run function mblock:objects/music_player/plugins/item_events/note_block_load
execute at @s as @e[type=item,tag=!_saved,distance=0..1,limit=1,nbt={Item: {id: "minecraft:book"}},nbt=!{Item: {tag: {contains_song: 1b}}},tag=!_saved,tag=!_loaded] at @s unless entity @e[tag=_ls_scheduled,distance=0..2] run function mblock:objects/music_player/plugins/item_events/note_block_save

particle minecraft:mycelium ~ ~1 ~ 0.2 1 0.2 0 5

function mblock:objects/music_player/xyz_private/update_sound
execute unless entity @e[tag=_ls_scheduled,distance=0..2] run function mblock:objects/music_player/xyz_private/update_dir
