function mblock:note/utils/check_at_pos
execute if score #block_is_valid _mbtmp matches 1 run particle note ~ ~.6 ~ 0.1 0 0.1 1 1
execute if score #block_is_valid _mbtmp matches 1 unless block ~ ~1 ~ obsidian unless block ~ ~-1 ~ obsidian run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_block"],Age:-32760,Particle:"block air"}
#execute if score #block_is_valid _mbtmp matches 1 as @s[type=player] run particle end_rod ~ ~.3 ~ 0.1 0.5 0.1 0.1 1
