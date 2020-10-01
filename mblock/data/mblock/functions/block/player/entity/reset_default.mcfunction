scoreboard players set @s mbn.sound 0
scoreboard players reset @s _aparse.x

title @s[tag=manual_gb_sound] actionbar {"text":"Sound Restarted!","color": "green"}
tag @s remove manual_gb_sound
tag @s remove in_area