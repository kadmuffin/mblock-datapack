scoreboard players reset #bpm _mbtmp

# Items[0]
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[0].Slot
execute store result score #count _mbtmp run data get block ~ ~ ~ Items[0].Count
execute unless score #slot _mbtmp matches 7..8 run scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[1]
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[1].Slot
execute store result score #count _mbtmp run data get block ~ ~ ~ Items[1].Count
execute unless score #slot _mbtmp matches 7..8 run scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[2]
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[2].Slot
execute store result score #count _mbtmp run data get block ~ ~ ~ Items[2].Count
execute unless score #slot _mbtmp matches 7..8 run scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[3]
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[3].Slot
execute store result score #count _mbtmp run data get block ~ ~ ~ Items[3].Count
execute unless score #slot _mbtmp matches 7..8 run scoreboard players operation #bpm _mbtmp += #count _mbtmp

execute unless score #bpm _mbtmp matches 5.. run scoreboard players set #bpm _mbtmp 5
