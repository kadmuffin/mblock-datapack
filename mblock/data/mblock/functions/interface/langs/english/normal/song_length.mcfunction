execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.zsize matches 2.. run tellraw @s ["",{"text":" Length: ","color": "gray", "hoverEvent":{"action":"show_text","value":"How long is your song in blocks.\n\n§9Performance Impact: §aLow"}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.zsize set -1"},"hoverEvent":{"action":"show_text","value":"-5"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"score":{"objective":"aparse.zsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.zsize set -2"},"hoverEvent":{"action":"show_text","value":"+5"}}]
execute unless score @e[tag=music_player,sort=nearest,limit=1] aparse.zsize matches 2.. run tellraw @s ["",{"text":" Length: ","color": "gray", "hoverEvent":{"action":"show_text","value":"How long is your song in blocks.\n\n§9Performance Impact: §aLow"}},{"text":" \u25c0 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"-5"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"score":{"objective":"aparse.zsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Click here to change zsize manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.zsize set <zsize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.zsize set -2"},"hoverEvent":{"action":"show_text","value":"+5"}}]