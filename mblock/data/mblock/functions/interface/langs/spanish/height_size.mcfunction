execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches 2..8 run tellraw @s ["",{"text":" Altura: ","color": "gray", "hoverEvent":{"action":"show_text","value":"¿Cuánta altura necesitarás para tu canción?.\n\nPor defecto es 4, hacer este número más grande tendrá un impacto ligero en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"score":{"objective":"aparse.ysize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -2"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches 9..14 run tellraw @s ["",{"text":" Altura: ","color": "gray", "hoverEvent":{"action":"show_text","value":"¿Cuánta altura necesitarás para tu canción?.\n\nPor defecto es 4, hacer este número más grande tendrá un impacto ligero en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"score":{"objective":"aparse.ysize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -2"},"hoverEvent":{"action":"show_text","value":"+1 (Limite Recomendado superado)"}, "color":"yellow"}]
execute unless score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches 2.. if score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches ..14 run tellraw @s ["",{"text":" Altura: ","color": "gray", "hoverEvent":{"action":"show_text","value":"¿Cuánta altura necesitarás para tu canción?.\n\nPor defecto es 4, hacer este número más grande tendrá un impacto ligero en el rendimiento."}},{"text":" \u25c0 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"score":{"objective":"aparse.ysize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":" \u25b6 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -2"},"hoverEvent":{"action":"show_text","value":"+1"}}]
execute if score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches 2.. unless score @e[tag=music_player,sort=nearest,limit=1] aparse.ysize matches ..14 run tellraw @s ["",{"text":" Altura: ","color": "gray", "hoverEvent":{"action":"show_text","value":"¿Cuánta altura necesitarás para tu canción?.\n\nPor defecto es 4, hacer este número más grande tendrá un impacto ligero en el rendimiento."}},{"text":" \u25c0 ","clickEvent":{"action":"run_command","value":"/trigger mb.menu.ysize set -1"},"hoverEvent":{"action":"show_text","value":"-1"}},{"text":" [","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"score":{"objective":"aparse.ysize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":"] ","hoverEvent":{"action":"show_text","value":"Haga clic aquí para cambiar el tamaño en Y manualmente.\n\nLos cambios hechos manualmente tendrán efecto en la próxima reproducción."},"clickEvent":{"action":"suggest_command","value":"/trigger mb.menu.ysize set <ysize>"}},{"text":" \u25b6 ","color":"dark_gray","hoverEvent":{"action":"show_text","value":"+1"}}]
