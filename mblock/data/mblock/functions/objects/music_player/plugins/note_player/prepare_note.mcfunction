execute at @s positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}

execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~0.2 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~-0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~0.2 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}

execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~ ~-0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~ ~0.6 align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~-0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~0.6 ~ ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #mblock:octaves unless entity @e[tag=_note,distance=0..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_note","new_note"],Age:-32760s,Particle:"block air"}

scoreboard players operation @e[tag=new_note,limit=1] mb_tmp2 = @s mb_tmp2

tag @e[tag=new_note,limit=1] remove new_note