summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}

scoreboard players operation @e[tag=new_note,limit=1] mb_tmp2 = @s mb_tmp2
tag @e[tag=new_note,limit=1] remove new_note