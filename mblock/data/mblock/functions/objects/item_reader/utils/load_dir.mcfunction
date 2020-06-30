tag @s remove look_neg

execute if entity @s[tag=has_look_neg] run tag @s add look_neg
execute if score #dir aparse.dir matches 0 run scoreboard players set @s aparse.dir 0
execute if score #dir aparse.dir matches 1 run scoreboard players set @s aparse.dir 1