function mblock:objects/note_wand/xyz_private/setup_tags

execute as @a[nbt={SelectedItem: {tag: {note_wand: 1b}}}] at @s run function mblock:objects/note_wand/xyz_private/main_hand
execute as @a[nbt={Inventory: [{Slot: -106b, tag: {note_wand: 1b}}]}] at @s run function mblock:objects/note_wand/xyz_private/off_hand

execute as @a[nbt={SelectedItem: {tag: {note_wand_inverted: 1b}}}] at @s run function mblock:objects/note_wand/xyz_private/off_hand
execute as @a[nbt={Inventory: [{Slot: -106b, tag: {note_wand_inverted: 1b}}]}] at @s run function mblock:objects/note_wand/xyz_private/main_hand

execute at @a[nbt={OnGround: 1b}] run function mblock:objects/note_wand/xyz_private/item_on_floor_check

execute as @a[tag=!_using_wand,tag=holding_block] run function mblock:objects/note_wand/plugins/save_tone/forget_tone

function mblock:objects/note_wand/xyz_private/reset_tags
