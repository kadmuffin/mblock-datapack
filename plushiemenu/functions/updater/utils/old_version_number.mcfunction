execute if entity @a[tag=PlushiesGeneration] run scoreboard players set VERSION _plushieSettings 109
execute if score GLOBAL _plushieTMP matches 0..61 if score tick _plushieTMP matches 0..61 run scoreboard players set VERSION _plushieSettings 109
execute if score GLOBAL _plushieTMP matches 0..61 unless score tick _plushieTMP matches 0..61 run scoreboard players set VERSION _plushieSettings 105
execute if score CORE _plushieTMP matches 0..4 run scoreboard players set VERSION _plushieSettings 110
execute if score VERSION _plushieTMP matches 0.. run scoreboard players set VERSION _plushieSettings 110
execute if score VERSION _plushieTMP matches ..0 run scoreboard players set VERSION _plushieSettings 110

execute if entity @e[tag=plushie_complete,tag=!plushie_v1_5,tag=!plushie_v2,limit=1] run scoreboard players set VERSION _plushieSettings 105
execute if entity @e[tag=plushie_complete,tag=plushie_v1_5,limit=1] run scoreboard players set VERSION _plushieSettings 109
