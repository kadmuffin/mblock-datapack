execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run summon item ~ ~ ~ {Tags: [song, _loaded], Item: {id: "minecraft:note_block", Count: 1b}, PickupDelay: -32760s, NoGravity: 1b}
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~ ~
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run data merge entity @s {NoGravity: 1b}
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d]}

execute as @s[tag=self_align] run summon item ~ ~ ~ {Tags: [song, self_align, _loaded], Item: {id: "minecraft:note_block", Count: 1b}, PickupDelay: -32760s, NoGravity: 1b}

execute if entity @s[tag=disable_bpm] run tag @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] add disable_bpm
execute if entity @s[tag=disable_size] run tag @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] add disable_size
execute if entity @s[tag=disable_bpm,tag=disable_size] run tag @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] add on_area
execute if entity @s[nbt={Item: {tag: {nbs_file: 1b}}}] run tag @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] add nbs_file

data modify entity @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] Item.tag set from entity @s Item.tag
data modify entity @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] Item.tag.contains_song set value 0b

tag @s add _loaded

data modify entity @e[type=item,tag=_loaded,sort=nearest,limit=1] PickupDelay set value -32760s


execute if entity @s[tag=disable_bpm,tag=disable_size] store result score @s aparse.zsize run data get entity @s Item.tag.song.zsize

execute if entity @s[tag=disable_bpm,tag=disable_size] unless entity @e[tag=_ls_scheduled] if score @s aparse.zsize matches ..300 as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/prepare_loop
execute if entity @s[tag=disable_bpm,tag=disable_size] if entity @e[tag=_ls_scheduled] if score @s aparse.zsize matches ..300 as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add _in_wait_for_load_1
execute if entity @s[tag=disable_bpm,tag=disable_size] unless entity @e[tag=_ls_scheduled] if score @s aparse.zsize matches 301.. as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/schedules/xyz_private/load/setup_data
execute if entity @s[tag=disable_bpm,tag=disable_size] if entity @e[tag=_ls_scheduled] if score @s aparse.zsize matches 301.. as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add _in_wait_for_load
execute if entity @s[tag=disable_bpm,tag=disable_size] if score @s aparse.zsize matches 301.. run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loading Song Slowly (Travel Time > 300!)","color":"yellow"}]


execute if entity @s[tag=disable_bpm,tag=disable_size] if score @s aparse.zsize matches ..300 run data modify entity @s PickupDelay set value 0s
execute if entity @s[tag=disable_bpm,tag=disable_size] if score @s aparse.zsize matches ..300 run tp @s @p[nbt={OnGround: 1b},dx=0,limit=1]

execute if entity @e[tag=_ls_scheduled] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"A Song is already loading, waiting for it.","color":"red"}]
execute if entity @e[tag=_ls_scheduled] run data modify entity @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] CustomName set value '"§8[MBlock] §4Waiting for process"'
execute if entity @e[tag=_ls_scheduled] run data modify entity @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] CustomNameVisible set value 1b

execute if entity @s[tag=!disable_bpm,tag=!disable_size] unless entity @e[tag=_ls_scheduled] as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/schedules/xyz_private/load/setup_data
execute if entity @s[tag=!disable_bpm,tag=!disable_size] if entity @e[tag=_ls_scheduled] as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run tag @s add _in_wait_for_load

#execute as @e[tag=song,tag=!_ls_scheduled,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/schedules/xyz_private/load/setup_data
