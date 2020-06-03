scoreboard objectives add _mbtmp dummy

# Include objects setups
function mblock:objects/note_wand/setup
function mblock:objects/music_player/setup
function mblock:objects/area_parser/setup
function mblock:objects/item_reader/setup

execute unless score $.installed _mbtmp matches 1 run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loaded and installed!","color":"gold"}]
execute if score $.installed _mbtmp matches 1 run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loaded and started!","color":"gold"}]
scoreboard players set $.installed _mbtmp 1
