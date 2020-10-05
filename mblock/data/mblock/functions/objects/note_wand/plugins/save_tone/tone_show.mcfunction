scoreboard players operation #tone_scaled _mbtmp = @s _mbtmp1
execute if score #tone_scaled _mbtmp matches -24..-1 run scoreboard players add #tone_scaled _mbtmp 24
execute if score #tone_scaled _mbtmp matches 25..48 run scoreboard players remove #tone_scaled _mbtmp 24

execute if score #tone_scaled _mbtmp matches 0 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:lime_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 1 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:green_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 2 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:yellow_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 3 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:orange_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 4 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:magenta_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 5 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:pink_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 6 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:red_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 7 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:purple_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 8 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 9 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:light_blue_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 10 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:blue_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 11 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:gray_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 12 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:black_terracotta"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 13 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:lime_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 14 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:green_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 15 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:yellow_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 16 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:orange_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 17 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:magenta_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 18 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:pink_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 19 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:red_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 20 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:purple_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 21 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:white_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 22 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:light_blue_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 23 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:blue_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}
execute if score #tone_scaled _mbtmp matches 24 run summon falling_block ~ ~.65 ~ {BlockState:{Name:"minecraft:gray_concrete"},CustomName:"\"§aClick to Drop!\"",CustomNameVisible:1b,NoGravity:1b}

particle minecraft:enchanted_hit ~ ~.65 ~ 0 0.1 0 0.1 1 normal @s
