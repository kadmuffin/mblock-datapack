execute if entity @s[tag=!_load_scheduled] run scoreboard players operation #bar_max _array_tmp = @s aparse.xsize
#scoreboard players operation #bar_max _array_tmp += @s aparse.xsize
execute if entity @s[tag=!_load_scheduled] run scoreboard players add #bar_max _array_tmp 1
execute if entity @s[tag=!_load_scheduled] run scoreboard players operation #bar_max _array_tmp *= @s aparse.ysize
execute if entity @s[tag=!_load_scheduled] run scoreboard players operation #bar_max _array_tmp *= @s aparse.zsize

scoreboard players set #2 _mbtmp 2

execute if entity @s[tag=saving_with_error] run scoreboard players operation #bar_max _array_tmp /= #2 _mbtmp

bossbar add item_reader:progress "§5Item Reader"

execute if entity @s[tag=_save_scheduled,tag=!saving_with_error] run bossbar set item_reader:progress name "§9Saving Status"
execute if entity @s[tag=_load_scheduled] run bossbar set item_reader:progress name "§9Load Status"
execute if entity @s[tag=saving_with_error] run bossbar set item_reader:progress name "§5Saved item could contain bugs!"

bossbar set item_reader:progress players @a
bossbar set item_reader:progress style notched_6

execute as @s[tag=saving_with_error] run bossbar set item_reader:progress color yellow
execute as @s[tag=saving_with_error] if score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress color purple

execute as @s[tag=!saving_with_error] if score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress color green
execute as @s[tag=!saving_with_error] unless score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress color blue

execute store result bossbar item_reader:progress max run scoreboard players get #bar_max _array_tmp
execute store result bossbar item_reader:progress value run scoreboard players get counted_blocks _array_tmp

#execute if score counted_blocks _array_tmp >= #bar_max _array_tmp run scoreboard players reset counted_blocks _array_tmp

execute if score counted_blocks _array_tmp matches 1.. unless score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress visible true
