scoreboard players add @e[tag=_save_scheduled] _array_tmp2 1

#execute as @e[tag=_in_wait_for_save,tag=_save_scheduled] run tag @s run tag @s remove _save_scheduled

execute as @e[tag=_in_wait_for_save,limit=1] unless entity @e[tag=_save_scheduled] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/setup_data
execute as @e[tag=save_stage_2,scores={_array_tmp2=20..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_x1_row
execute as @e[tag=save_stage_3,scores={_array_tmp2=20..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_middle_row
execute as @e[tag=save_stage_4,scores={_array_tmp2=20..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_x2_row
execute as @e[tag=save_stage_5,scores={_array_tmp2=20..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/preprocess_data
