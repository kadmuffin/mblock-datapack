execute if score EXTEND_RANGE _plushieSettings matches 1.. run tag @s add off_this

execute as @s[tag=!off_this] run scoreboard players set EXTEND_RANGE _plushieSettings 1
execute as @s[tag=off_this] run scoreboard players set EXTEND_RANGE _plushieSettings 0
playsound minecraft:ui.button.click neutral @s[tag=!off_this] ~ ~ ~ 0.2 1.41
playsound minecraft:ui.button.click neutral @s[tag=off_this] ~ ~ ~ 0.2 1.63

tag @s remove off_this
