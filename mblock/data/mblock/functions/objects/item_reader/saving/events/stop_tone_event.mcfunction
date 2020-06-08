execute if score tone_count _array_tmp matches 2.. store result entity @s Item.tag.tmp.count short 1 run scoreboard players get tone_count _array_tmp

#execute if score length _array_tmp >= @s internal_zsize if entity @s[tag=soundable_in_air] run data modify entity @s Item.tag.tmp.has_soundable set value 1b

data modify entity @s Item.tag.z_data append from entity @s Item.tag.tmp
scoreboard players set tone_count _array_tmp 0

tag @s remove counting_tone
