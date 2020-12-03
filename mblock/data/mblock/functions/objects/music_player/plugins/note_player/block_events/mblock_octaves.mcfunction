execute as @s[tag=light_render_center] unless block ~ ~1 ~ bedrock unless block ~ ~-1 ~ bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["_note", "_note_lg", "new_note"], Age: -32760, Particle: "block air"}
execute as @s[tag=!light_render_center] unless block ~ ~1 ~ bedrock unless block ~ ~-1 ~ bedrock run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["_note", "new_note"], Age: -32760, Particle: "block air"}

scoreboard players operation @e[tag=new_note,limit=1] mbn.sound = @s mbn.sound
scoreboard players operation @e[tag=new_note,limit=1] mb.id = @s mb.id
tag @e[tag=new_note,limit=1] remove new_note