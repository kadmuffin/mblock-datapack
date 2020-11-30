scoreboard players set #signat_a _mbtmp 0
scoreboard players set #signat_b _mbtmp 0
execute store result score #a_slot _mbtmp run data get block ~ ~ ~ Items[-2].Slot
execute store result score #b_slot _mbtmp run data get block ~ ~ ~ Items[-1].Slot
execute if score #a_slot _mbtmp matches 7 store result score #signat_a _mbtmp run data get block ~ ~ ~ Items[-2].Count
execute if score #b_slot _mbtmp matches 8 store result score #signat_b _mbtmp run data get block ~ ~ ~ Items[-1].Count
execute if score #b_slot _mbtmp matches 7 store result score #signat_a _mbtmp run data get block ~ ~ ~ Items[-1].Count

execute if score #signat_b _mbtmp matches 1 run function bpm_addon:utils/copy_and_validate
execute if score #signat_b _mbtmp matches 2 run function bpm_addon:utils/copy_and_validate
execute if score #signat_b _mbtmp matches 4 run function bpm_addon:utils/copy_and_validate
execute if score #signat_b _mbtmp matches 8 run function bpm_addon:utils/copy_and_validate
execute if score #signat_b _mbtmp matches 12 run function bpm_addon:utils/copy_and_validate

execute if score #signat_b _mbtmp matches 0 run tag @s add valid_signature

execute if score #signat_a _mbtmp matches 1.. run scoreboard players operation @s mb.sig.a = #signat_a _mbtmp
