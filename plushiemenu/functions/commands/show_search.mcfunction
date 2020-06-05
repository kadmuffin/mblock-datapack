tag @s[tag=devShowLoop] add searchOFF
tag @s[tag=devShowLoop] remove devShowLoop
playsound minecraft:ui.button.click neutral @s[tag=searchOFF] ~ ~ ~ 0.2 1.41
playsound minecraft:ui.button.click neutral @s[tag=!searchOFF] ~ ~ ~ 0.2 1.63

tag @s[tag=!devShowLoop,tag=!searchOFF] add devShowLoop
tag @s remove searchOFF
