execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches 2..8 run tellraw @s ["",{"text":" Longitud: ","color": "gray", "hoverEvent":{"action":"show_text","value":"La cantidad de espacio que necesitas para tu canción.\n\nPor defecto es 3, hacer este valor más grande tendrá un impacto en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"score":{"objective":"aparse.xsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -2"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches 9..14 run tellraw @s ["",{"text":" Longitud: ","color": "gray", "hoverEvent":{"action":"show_text","value":"La cantidad de espacio que necesitas para tu canción.\n\nPor defecto es 3, hacer este valor más grande tendrá un impacto en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"score":{"objective":"aparse.xsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -2"},"hoverEvent":{"action":"show_text","value":"+1 (Limite Recomendado superado)"}, "color":"yellow"}]
execute unless score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches 2.. if score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches ..14 run tellraw @s ["",{"text":" Longitud: ","color": "gray", "hoverEvent":{"action":"show_text","value":"La cantidad de espacio que necesitas para tu canción.\n\nPor defecto es 3, hacer este valor más grande tendrá un impacto en el rendimiento."}},{"text":" \u25c0 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"score":{"objective":"aparse.xsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -2"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches 2.. unless score @e[tag=music_player,sort=nearest,limit=1] aparse.xsize matches ..14 run tellraw @s ["",{"text":" Longitud: ","color": "gray", "hoverEvent":{"action":"show_text","value":"La cantidad de espacio que necesitas para tu canción.\n\nPor defecto es 3, hacer este valor más grande tendrá un impacto en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.xsize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"score":{"objective":"aparse.xsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en X manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.xsize set <xsize>"}},{"text":" \u25b6 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"+1"}}]
