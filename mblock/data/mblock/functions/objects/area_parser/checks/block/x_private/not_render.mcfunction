function mblock:objects/music_player/plugins/item_events/note_block_load_area_parser
execute as @s[scores={_aparse.x=..2}] if entity @a[distance=0..5] run function mblock:objects/area_parser/checks/block/x_private/event_helper
