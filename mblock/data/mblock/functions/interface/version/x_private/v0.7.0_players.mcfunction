function mblock:objects/area_parser/checks/utils/cast_dir_to_mbdir
scoreboard players operation @s mb.floor = @s _mb.floor
scoreboard players operation @s mb.id = @s mb_id
scoreboard players set @s mb.sig.a 4
scoreboard players set @s mb.sig.b 4
scoreboard players set @s mb.max_accuracy 4
tag @s add nbs_bpm
