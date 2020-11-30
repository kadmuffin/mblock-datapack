execute as @e[tag=play_event,tag=!1234_ready] at @s align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #standing_signs run function sign_lyrics:play
execute as @e[tag=save_event,tag=!1234_ready] at @s if block ~ ~ ~ #standing_signs run function sign_lyrics:save
execute as @e[tag=load_event,scores={mb.id=1234}] at @s run function sign_lyrics:load
