# Set Data
data modify entity @s ArmorItems[3].tag.event set value {id: 7265, bpm: [], sig: []}

# Copy Counts
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[0].Slot
execute unless score #slot _mbtmp matches 7..8 run data modify entity @s ArmorItems[3].tag.event.bpm append from block ~ ~ ~ Items[0].Count
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[1].Slot
execute unless score #slot _mbtmp matches 7..8 run data modify entity @s ArmorItems[3].tag.event.bpm append from block ~ ~ ~ Items[1].Count
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[2].Slot
execute unless score #slot _mbtmp matches 7..8 run data modify entity @s ArmorItems[3].tag.event.bpm append from block ~ ~ ~ Items[2].Count
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[3].Slot
execute unless score #slot _mbtmp matches 7..8 run data modify entity @s ArmorItems[3].tag.event.bpm append from block ~ ~ ~ Items[3].Count

# Copy Signature Counts
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[-1].Slot
execute if score #slot _mbtmp matches 7 run data modify entity @s ArmorItems[3].tag.event.sig append from block ~ ~ ~ Items[-1].Count
execute store result score #slot _mbtmp run data get block ~ ~ ~ Items[-2].Slot
execute if score #slot _mbtmp matches 7 run data modify entity @s ArmorItems[3].tag.event.sig append from block ~ ~ ~ Items[-2].Count


execute store result score #slot_1 _mbtmp run data get block ~ ~ ~ Items[-1].Slot
execute if score #slot_1 _mbtmp matches 8 unless score #slot _mbtmp matches 7 run data modify entity @s ArmorItems[3].tag.event.sig append value 0
execute if score #slot_1 _mbtmp matches 8 run data modify entity @s ArmorItems[3].tag.event.sig append from block ~ ~ ~ Items[-1].Count

# Push Block
function song_load:utils/events/push