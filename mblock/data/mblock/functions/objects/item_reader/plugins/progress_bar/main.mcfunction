scoreboard players operation #bar_max _array_tmp = @s aparse.xsize
scoreboard players operation #bar_max _array_tmp += @s aparse.xsize
scoreboard players add #bar_max _array_tmp 1
scoreboard players operation #bar_max _array_tmp *= @s aparse.ysize
scoreboard players operation #bar_max _array_tmp *= @s aparse.zsize

execute if entity @s[tag=_save_scheduled] run bossbar add item_reader:progress "§5Saving Status"
execute if entity @s[tag=_load_scheduled] run bossbar add item_reader:progress "§5Load Status"

bossbar set item_reader:progress players @a
bossbar set item_reader:progress style notched_6

execute if score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress color green
execute unless score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress color blue

execute store result bossbar item_reader:progress max run scoreboard players get #bar_max _array_tmp
execute store result bossbar item_reader:progress value run scoreboard players get counted_blocks _array_tmp

#execute if score counted_blocks _array_tmp >= #bar_max _array_tmp run scoreboard players reset counted_blocks _array_tmp

execute if score counted_blocks _array_tmp matches 1.. unless score counted_blocks _array_tmp >= #bar_max _array_tmp run bossbar set item_reader:progress visible true
