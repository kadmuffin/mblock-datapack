execute if score @e[tag=music_player,sort=nearest,limit=1] mb.bpm matches 10.. run tellraw @s ["",{"text":" BPM: ","color": "gray", "hoverEvent":{"action":"show_text","value":"Changes the tempo of the song.\n\nSwitch to Speed Multiplier for more easy to use alternative or load a preset."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.bpm set -1"},"hoverEvent":{"action":"show_text","value":"-5"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"score":{"objective":"mb.bpm","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.bpm set -2"},"hoverEvent":{"action":"show_text","value":"+5"}}]
execute unless score @e[tag=music_player,sort=nearest,limit=1] mb.bpm matches 10.. run tellraw @s ["",{"text":" BPM: ","color": "gray", "hoverEvent":{"action":"show_text","value":"Changes the tempo of the song.\n\nSwitch to Speed Multiplier for more easy to use alternative or load a preset."}},{"text":" \u25c0 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"-5"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"score":{"objective":"mb.bpm","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Click here to change the bpm manually.\n\nChanges made manually will take effect on next play."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.bpm set <bpm>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.bpm set -2"},"hoverEvent":{"action":"show_text","value":"+5"}}]