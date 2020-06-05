# NATURALGEN = 0, Showing Natural
#     Always Rate [◇]
execute if entity @s[tag=showNatural] unless score NATURALGEN _plushieSettings matches 1 run tellraw @s ["",{"text":" \u0020 \u0020 Always Spawn ","color":"yellow"},{"text":"[\u25c7]","color":"gray"},{"text":"\n "}]
# NATURALGEN = 1, Showing Natural, RATE not 1
#     Always Rate [◇]
execute if entity @s[tag=showNatural] if score NATURALGEN _plushieSettings matches 1 if score RATE _plushieSettings matches 3 run tellraw @s ["",{"text":" \u0020 \u0020 Always Spawn ","color":"yellow"},{"text":"[\u25c6]","color":"green"},{"text":"\n "}]
# NATURALGEN = 1, Showing Natural, RATE = 1
#     Always Rate [◆]
execute if entity @s[tag=showNatural] if score NATURALGEN _plushieSettings matches 1 unless score RATE _plushieSettings matches 3 run tellraw @s ["",{"text":" \u0020 \u0020 Always Spawn ","color":"yellow"},{"text":"[","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"\u25c7","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"]","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"\n "}]


# CUSTOMGEN = 0, Showing Custom
#     Use Wolf Rates [◇]
execute if entity @s[tag=showCustom] unless score CUSTOMGEN _plushieSettings matches 1 run tellraw @s ["",{"text":" \u0020 \u0020 Use Wolf Rates ","color":"yellow"},{"text":"[\u25c7]","color":"gray"},{"text":"\n "}]
# CUSTOMGEN = 1, Showing Custom, RATE not 1
#     Use Wolf Rates [◇]
execute if entity @s[tag=showCustom] if score CUSTOMGEN _plushieSettings matches 1 if score RATE_C _plushieSettings matches 3 run tellraw @s ["",{"text":" \u0020 \u0020 Use Wolf Rates ","color":"yellow"},{"text":"[\u25c6]","color":"green"},{"text":"\n "}]
# CUSTOMGEN = 1, Showing Custom, RATE = 1
#     Use Wolf Rates [◆]
execute if entity @s[tag=showCustom] if score CUSTOMGEN _plushieSettings matches 1 unless score RATE_C _plushieSettings matches 3 run tellraw @s ["",{"text":" \u0020 \u0020 Use Wolf Rates ","color":"yellow"},{"text":"[","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"\u25c7","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"]","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/always_rate"}},{"text":"\n "}]
