
# Items[0]
execute store result score #count _mbtmp run data get block ~ ~1 ~ Items[0].Count
scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[1]
execute store result score #count _mbtmp run data get block ~ ~1 ~ Items[1].Count
scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[2]
execute store result score #count _mbtmp run data get block ~ ~1 ~ Items[2].Count
scoreboard players operation #bpm _mbtmp += #count _mbtmp

# Items[3]
execute store result score #count _mbtmp run data get block ~ ~1 ~ Items[3].Count
scoreboard players operation #bpm _mbtmp += #count _mbtmp
