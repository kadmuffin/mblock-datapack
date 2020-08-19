execute unless block ~ ~1 ~ bedrock unless block ~ ~-1 ~ bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["_note", "new_note"], Age: -32760, Particle: "block air"}

scoreboard players operation @e[tag=new_note,limit=1] mb_tmp2 = @s mb_tmp2
scoreboard players operation @e[tag=new_note,limit=1] mb_id = @s mb_id
tag @e[tag=new_note,limit=1] remove new_note