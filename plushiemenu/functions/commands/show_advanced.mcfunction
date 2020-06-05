tag @s[tag=showAdvanced] add advancedOFF
playsound minecraft:ui.button.click neutral @s[tag=advancedOFF] ~ ~ ~ 0.2 1.3
playsound minecraft:ui.button.click neutral @s[tag=!advancedOFF] ~ ~ ~ 0.2 2
tag @s[tag=showAdvanced] remove showAdvanced
tag @s[tag=!showAdvanced,tag=!advancedOFF] add showAdvanced
tag @s remove advancedOFF
