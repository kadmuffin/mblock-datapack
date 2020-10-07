scoreboard objectives add _mbtmp dummy
scoreboard objectives add _mbtmp1 dummy
scoreboard objectives add mb.menu.tmp dummy
scoreboard objectives add flying minecraft.custom:minecraft.fly_one_cm

# Include objects setups
function mblock:objects/note_wand/setup
function mblock:objects/music_player/setup
function mblock:objects/area_parser/setup
function mblock:objects/item_reader/setup
function mblock:interface/setup
function mblock:note/setup
function song_load:setup
function mblock_events:setup

execute unless score $.installed _mbtmp matches 1 as @a at @s run function mblock:interface/version/x_private/first_install
execute unless score $.installed _mbtmp matches 1 run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loaded and installed!, ","color":"gold"}, {"text":"(Click for Notes)", "color": "green", "clickEvent":{"action":"run_command", "value":"/function mblock:interface/commands/ask_set"}}]
execute if score $.installed _mbtmp matches 1 run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loaded and started! ","color":"gold"}, {"text":"(Click for Notes)", "color": "green", "clickEvent":{"action":"run_command", "value":"/function mblock:interface/commands/ask_set"}}]
scoreboard players set $.installed _mbtmp 1

function mblock:interface/version/main

# Custom addons
scoreboard players set #external_sounds _mbtmp 0

kill @e[tag=_block]
kill @e[tag=z_step]
kill @e[tag=y_step]