# NATURALGEN = 0, Showing Natural
#     High Rate [◇]
execute if entity @s[tag=showNatural] unless score NATURALGEN _plushieSettings matches 1 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[\u25c7]","color":"gray"},{"text":"\n "}]
# NATURALGEN = 1, Showing Natural, RATE not 1
#     High Rate [◇]
execute if entity @s[tag=showNatural] if score NATURALGEN _plushieSettings matches 1 if score RATE _plushieSettings matches 2 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[\u25c6]","color":"green"},{"text":"\n "}]
# NATURALGEN = 1, Showing Natural, RATE = 1
#     High Rate [◆]
execute if entity @s[tag=showNatural] if score NATURALGEN _plushieSettings matches 1 unless score RATE _plushieSettings matches 2 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"\u25c7","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"]","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"\n "}]


# CUSTOMGEN = 0, Showing Custom
#     High Rate [◇]
execute if entity @s[tag=showCustom] unless score CUSTOMGEN _plushieSettings matches 1 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[\u25c7]","color":"gray"},{"text":"\n "}]
# CUSTOMGEN = 1, Showing Custom, RATE not 1
#     High Rate [◇]
execute if entity @s[tag=showCustom] if score CUSTOMGEN _plushieSettings matches 1 if score RATE_C _plushieSettings matches 2 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[\u25c6]","color":"green"},{"text":"\n "}]
# CUSTOMGEN = 1, Showing Custom, RATE = 1
#     High Rate [◆]
execute if entity @s[tag=showCustom] if score CUSTOMGEN _plushieSettings matches 1 unless score RATE_C _plushieSettings matches 2 run tellraw @s ["",{"text":" \u0020 \u0020 High Rate ","color":"yellow"},{"text":"[","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"\u25c7","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"]","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/high_rate"}},{"text":"\n "}]
