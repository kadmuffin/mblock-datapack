function mblock:block/check_at_pos
execute if score #block_is_valid _mbtmp matches 1 run particle note ~ ~.6 ~ 0.5 0 0.5 1 1
execute if score #block_is_valid _mbtmp matches 1 unless block ~ ~1 ~ obsidian run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["_block"],Age:-32760s,Particle:"note"}