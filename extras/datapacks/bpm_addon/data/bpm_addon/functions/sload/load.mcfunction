setblock ~ ~ ~ barrel
setblock ~ ~1 ~ smooth_stone_slab

# Items[0]
execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.bpm[0]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 0b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp
# Items[1]
execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.bpm[1]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 1b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp
# Items[2]
execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.bpm[2]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 2b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp
# Items[3]
execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.bpm[3]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 3b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp

execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.sig[0]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 7b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp

execute store result score #count _mbtmp run data get entity @s ArmorItems[3].tag.event.sig[1]
execute if score #count _mbtmp matches 1..64 run data modify block ~ ~ ~ Items append value {Slot: 8b, id: 'minecraft:note_block', Count:1b}
execute if score #count _mbtmp matches 1..64 store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp

function song_load:utils/events/pop