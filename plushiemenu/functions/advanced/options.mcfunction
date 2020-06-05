execute unless score SKILLS_LOOP _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Disable Skills Loop ","color":"yellow"},{"text":"[\u25c6]","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/skills"}}]
execute if score SKILLS_LOOP _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Disable Skills Loop ","color":"yellow"},{"text":"[\u25c6]","color":"red","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/skills"}}]

execute unless score CORE _plushieSettings matches 3..4 if score INSTANT_KILL _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Instant Kill ","color":"yellow"},{"text": "{Legacy} ", "color":"gold"},{"text":"[\u25c6]","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/instant_kill"}}]
execute unless score CORE _plushieSettings matches 3..4 unless score INSTANT_KILL _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Instant Kill ","color":"yellow"},{"text": "{Legacy} ", "color":"gold"},{"text":"[\u25c6]","color":"red","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/instant_kill"}}]
execute if score CORE _plushieSettings matches 3..4 run tellraw @s ["",{"text":" \u0020 \u0020 Instant Kill ","color":"yellow"},{"text": "{Legacy} ", "color":"gold"},{"text":"[\u25c6]","color":"gray","hoverEvent":{"action":"show_text","value":"This feature is only compatible with legacy cores."}}]

execute if score CORE _plushieSettings matches 3..4 if score EXTEND_RANGE _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Extend Wolf Range ","color":"yellow"},{"text": "{60\u219280} ", "color":"gold"},{"text":"[\u25c6]","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/extend_range"}}]
execute if score CORE _plushieSettings matches 3..4 unless score EXTEND_RANGE _plushieSettings matches 1.. run tellraw @s ["",{"text":" \u0020 \u0020 Extend Wolf Range ","color":"yellow"},{"text": "{60\u219280} ", "color":"gold"},{"text":"[\u25c6]","color":"red","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/extend_range"}}]
execute unless score CORE _plushieSettings matches 3..4 run tellraw @s ["",{"text":" \u0020 \u0020 Extend Wolf Range ","color":"yellow"},{"text": "{60\u219280} ", "color":"gold"},{"text":"[\u25c6]","color":"gray","hoverEvent":{"action":"show_text","value":"This feature is incompatible with legacy cores."}}]

execute if score CORE _plushieSettings matches 3..4 run tellraw @s[tag=devShowLoop] ["",{"text":" \u0020 \u0020 Show Active Search-Loop ","color":"yellow"},{"text":"[\u25c6]","color":"green","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/show_search"}}]
execute if score CORE _plushieSettings matches 3..4 run tellraw @s[tag=!devShowLoop] ["",{"text":" \u0020 \u0020 Show Active Search-Loop ","color":"yellow"},{"text":"[\u25c6]","color":"red","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/show_search"}}]
execute unless score CORE _plushieSettings matches 3..4 run tellraw @s[tag=!devShowLoop] ["",{"text":" \u0020 \u0020 Show Active Search-Loop ","color":"yellow"},{"text":"[\u25c6]","color":"gray","hoverEvent":{"action":"show_text","value":"This feature is incompatible with legacy cores."}}]


tellraw @s ["",{"text":" \u0020 \u0020 Kill All Plushies ","color":"aqua"},{"text":"[\u25c6]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function plushiewolf:reset_plushies"}}]

tellraw @s ["",{"text":" \u0020 \u0020 Load Default Settings ","color":"gray"},{"text":"[\u25c6]","color":"blue","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/load_default"}}]

tellraw @s {"text":" "}