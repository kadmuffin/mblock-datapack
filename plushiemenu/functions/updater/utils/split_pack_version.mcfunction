scoreboard players set #100 _plushieTMP2 100
scoreboard players set #10 _plushieTMP2 10

scoreboard players operation VERSION_1 _plushieTMP2 = VERSION _plushieTMP2
scoreboard players operation VERSION_12 _plushieTMP2 = VERSION _plushieTMP2
scoreboard players operation VERSION_3 _plushieTMP2 = VERSION _plushieTMP2

# 120 -> 1.2 -> 1
scoreboard players operation VERSION_1 _plushieTMP2 /= #100 _plushieTMP2

# 120 / 10 -> 12
scoreboard players operation VERSION_12 _plushieTMP2 /= #10 _plushieTMP2
# 12 - (1*10)
scoreboard players operation VERSION_2 _plushieTMP2 = VERSION_12 _plushieTMP2
scoreboard players operation VERSION_1_10 _plushieTMP2 = VERSION_1 _plushieTMP2
scoreboard players operation VERSION_1_10 _plushieTMP2 = #10 _plushieTMP2
scoreboard players operation VERSION_2 _plushieTMP2 -= VERSION_1_10 _plushieTMP2


# 120 - (12 * 10) -> 0
scoreboard players operation VERSION_12 _plushieTMP2 *= #10 _plushieTMP2
scoreboard players operation VERSION_3 _plushieTMP2 -= VERSION_12 _plushieTMP2

scoreboard players reset VERSION_12 _plushieTMP2
scoreboard players reset VERSION_1_10 _plushieTMP2

tellraw @s ["",{"text":"(v", "color":"gold"}, {"score":{"name":"VERSION_1", "objective":"_plushieTMP2"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_2", "objective":"_plushieTMP2"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_3", "objective":"_plushieTMP2"}, "color":"red"}, {"text":") ","color":"gold"}]