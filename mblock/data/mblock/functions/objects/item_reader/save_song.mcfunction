tag @s add _old_item

execute at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run summon item ~ ~ ~ {Tags: [new_song, _saved], Item: {id: "minecraft:enchanted_book", Count: 1b, tag: {contains_song: 1b, data: {notes: [], events: []}, z_data: [], y_data: [], tmp_events: [], tmp_2: [], tmp_3: [], tmp: {tone: -1, sound: -1}, song: {bpm: -1, xsize: -1, ysize: -1, zsize: -1, array_size: -1}, display: {Name: "\"§7My Song!\"", Lore: ["\"§6Song BPM:\"", "\"Unknown\"", "\"§6Travel Time:\"", "\"Unknown\"", "\"§6Stored Elements:\"", "\"Unknown\""]}}}, PickupDelay: -32768s, NoGravity: 1b}

#data modify entity @e[tag=new_song,limit=1] Item set from entity @s Item

kill @s

execute if entity @e[tag=_ls_scheduled] as @e[tag=new_song,sort=nearest,limit=1] at @s run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Another saving operation is already in processing!, Waiting for it.","color":"red"}]
execute if entity @e[tag=_ls_scheduled] as @e[tag=new_song,sort=nearest,limit=1] at @s run tag @s add _in_wait_for_save
execute if entity @e[tag=_ls_scheduled] as @e[tag=new_song,sort=nearest,limit=1] at @s run data modify entity @s CustomNameVisible set value 1b
execute if entity @e[tag=_ls_scheduled] as @e[tag=new_song,sort=nearest,limit=1] at @s run data modify entity @s CustomName set value "\"§8[MBlock] §eWaiting for process.\""


execute unless entity @e[tag=_ls_scheduled] as @e[tag=new_song,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/schedules/xyz_private/save/setup_data

#execute as @e[tag=new_song] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/saving/prepare_song
