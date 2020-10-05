execute store result score signature_a sload run data get entity @s ArmorItems[3].tag.song.signature[0]
execute store result score signature_b sload run data get entity @s ArmorItems[3].tag.song.signature[1]

execute unless score signature_a sload matches 1.. run scoreboard players set signature_a sload 4
execute unless score signature_b sload matches 1 unless score signature_b sload matches 2 unless score signature_b sload matches 4 unless score signature_b sload matches 8 run scoreboard players set signature_b sload 4

scoreboard players operation @e[tag=mplayer_block,limit=1] mb.sig.a = signature_a sload
scoreboard players operation @e[tag=mplayer_block,limit=1] mb.sig.b = signature_b sload