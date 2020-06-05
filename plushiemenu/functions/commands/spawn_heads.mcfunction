execute if entity @s[tag=!spawning_heads] run playsound minecraft:block.brewing_stand.brew block @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!spawning_heads] run setblock ~ ~ ~ minecraft:structure_block{powered:0b,rotation:"CLOCKWISE_90", posX: 0, posY: 0, posZ: 0, mode: "LOAD", name: "plushiewolf:heads"}
execute if entity @s[tag=!spawning_heads] run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=!spawning_heads] run tag @s add spawning_heads
