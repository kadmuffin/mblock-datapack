scoreboard objectives add mb.menu.lang dummy
scoreboard objectives add mb.menu.page dummy

scoreboard objectives add mb.menu.bpm trigger
scoreboard objectives add mb.menu.zsize trigger
scoreboard objectives add mb.menu.ysize trigger
scoreboard objectives add mb.menu.xsize trigger

execute unless #max_lang mb.menu.lang matches 1.. run scoreboard players set #max_lang mb.menu.lang 1
