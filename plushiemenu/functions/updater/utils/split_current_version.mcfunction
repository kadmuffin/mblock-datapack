scoreboard players set #100 _plushieTMP 100
scoreboard players set #10 _plushieTMP 10

scoreboard players operation VERSION_1 _plushieSettings = VERSION _plushieSettings
scoreboard players operation VERSION_12 _plushieTMP = VERSION _plushieSettings
scoreboard players operation VERSION_3 _plushieSettings = VERSION _plushieSettings

# 120 -> 1.2 -> 1
scoreboard players operation VERSION_1 _plushieSettings /= #100 _plushieTMP

# 120 / 10 -> 12
scoreboard players operation VERSION_12 _plushieTMP /= #10 _plushieTMP
# 12 - (1*10)
scoreboard players operation VERSION_2 _plushieSettings = VERSION_12 _plushieTMP
scoreboard players operation VERSION_1_10 _plushieTMP = VERSION_1 _plushieTMP
scoreboard players operation VERSION_1_10 _plushieTMP = #10 _plushieTMP
scoreboard players operation VERSION_2 _plushieSettings -= VERSION_1_10 _plushieTMP


# 120 - (12 * 10) -> 0
scoreboard players operation VERSION_12 _plushieTMP *= #10 _plushieTMP
scoreboard players operation VERSION_3 _plushieSettings -= VERSION_12 _plushieTMP

scoreboard players reset VERSION_12 _plushieTMP
scoreboard players reset VERSION_1_10 _plushieTMP

tellraw @s ["",{"text":"(v", "color":"gold"}, {"score":{"name":"VERSION_1", "objective":"_plushieSettings"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_2", "objective":"_plushieSettings"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_3", "objective":"_plushieSettings"}, "color":"red"}, {"text":") ","color":"gold"}]