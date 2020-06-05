function plushiemenu:utils/clear_chat

# -------------
#  plushiewolf
function plushiemenu:utils/split_line
function plushiemenu:utils/title

# [x] generation : ...
execute if entity @s[tag=!showAdvanced] run function plushiemenu:spawning/gen_object

execute if entity @s[tag=!showAdvanced] run tellraw @s {"text":" "}

function plushiemenu:advanced/title_section

execute if entity @s[tag=showAdvanced] run function plushiemenu:advanced/options
execute if entity @s[tag=showAdvanced] run function plushiemenu:advanced/cores


# spawn heads
function plushiemenu:utils/spawn_heads

#execute if entity @s[tag=!showAdvanced] run tellraw @s ["",{"text":"[","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/close_menu"}},{"text":"\u25c6","color":"red","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/close_menu"}},{"text":"]","clickEvent":{"action":"run_command","value":"/function plushiemenu:commands/close_menu"}},{"text":" Close Menu\n "}]
tellraw @s {"text":" "}

# -------------
function plushiemenu:utils/split_line
