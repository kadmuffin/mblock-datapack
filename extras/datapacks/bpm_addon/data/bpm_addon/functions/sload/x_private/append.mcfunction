data modify block ~ ~ ~ Items append value {Slot: 0b, id: 'minecraft:note_block', Count:1b}
execute store result block ~ ~ ~ Items[-1].Count byte 1 run scoreboard players get #count _mbtmp
execute store result block ~ ~ ~ Items[-1].Slot byte 1 run scoreboard players get #slot _mbtmp