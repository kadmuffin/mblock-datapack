tag @s add player
tag @s[scores={flying=1..}] add flying
tag @s remove extended
tag @s[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {player: 1b}}]},gamemode=!spectator] add extended

scoreboard players add @s[tag=!manual_gb_sound,scores={mbn.sound=1..}] _aparse.x 1
execute as @s[scores={_aparse.x=60..}] unless entity @e[tag=box_step,distance=0..100] run function mblock:block/player/entity/reset_default
execute as @s[scores={_aparse.x=90..}] run function mblock:block/player/entity/reset_default

function mblock:block/player/entity/x_private/boots_anim
execute as @s[nbt={OnGround: 1b}] at @s positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/entity/x_private/on_ground

execute as @s[tag=flying,gamemode=!survival,gamemode=!adventure] at @s positioned ~ ~-0.65 ~ align xz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/play_block
execute as @s[tag=!in_area] if block ~ ~-1 ~ blue_glazed_terracotta run function mblock:block/player/entity/x_private/change_default

scoreboard players reset @s flying
