scoreboard players add @e[tag=_ls_scheduled] _array_tmp2 1

#execute as @e[tag=_in_wait_for_save,tag=_save_scheduled] run tag @s run tag @s remove _save_scheduled

execute as @e[tag=_in_wait_for_save,limit=1] unless entity @e[tag=_ls_scheduled] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/setup_data
execute as @e[tag=save_stage_2,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_x1_row
execute as @e[tag=save_stage_3,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_middle_row
execute as @e[tag=save_stage_4,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/get_x2_row
execute as @e[tag=save_stage_5,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/save/preprocess_data

execute as @e[tag=_ls_scheduled,limit=1] run function mblock:objects/item_reader/plugins/progress_bar/main

tag @e[tag=save_stage_6] remove _ls_scheduled
tag @e[tag=save_stage_6] remove _save_scheduled
tag @e[tag=save_stage_6] remove save_stage_6

#execute as @e[tag=_in_wait_for_save,tag=_save_scheduled] run tag @s run tag @s remove _save_scheduled

execute as @e[tag=_in_wait_for_load,limit=1] unless entity @e[tag=_ls_scheduled] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/load/setup_data
execute as @e[tag=_in_wait_for_load_1,limit=1] unless entity @e[tag=_ls_scheduled] at @s run function mblock:objects/item_reader/prepare_loop

execute as @e[tag=load_stage_2,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/load/get_x1_row
execute as @e[tag=load_stage_3,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/load/get_middle_row
execute as @e[tag=load_stage_4,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/load/get_x2_row
execute as @e[tag=load_stage_5,scores={_array_tmp2=15..}] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/item_reader/schedules/xyz_private/load/preprocess_data


execute as @e[tag=_ls_scheduled,scores={_array_tmp2=45..}] at @s run tellraw @p ["", {"text": "[MusicBlocks] ", "color": "gray"}, {"text": "An Error has occurred while running the operation (probably the game ran out of chain commands).", "color":"red"}]
execute at @e[tag=_ls_scheduled,scores={_array_tmp2=45..}] as @e[tag=_loaded,distance=0..2,limit=1] run data modify entity @s PickupDelay set value 0s
execute at @e[tag=_ls_scheduled,scores={_array_tmp2=45..}] run particle angry_villager ~ ~ ~ 0.6 0.3 0.6 0.1 5
execute at @e[tag=_ls_scheduled,scores={_array_tmp2=45..}] run playsound block.anvil.break block @a[distance=0..30] ~ ~ ~ 0.6 1.75
execute at @e[tag=_ls_scheduled,scores={_array_tmp2=45..}] run bossbar set item_reader:progress visible false
kill @e[tag=_ls_scheduled,scores={_array_tmp2=45..}]