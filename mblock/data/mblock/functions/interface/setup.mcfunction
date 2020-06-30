scoreboard objectives add mb.menu.lang dummy
scoreboard objectives add mb.menu.page dummy

scoreboard objectives add mb.menu.tp trigger
scoreboard objectives add mb.menu.play trigger
scoreboard objectives add mb.menu.stop trigger
scoreboard objectives add mb.menu.bpm trigger
scoreboard objectives add mb.menu.zsize trigger
scoreboard objectives add mb.menu.ysize trigger
scoreboard objectives add mb.menu.xsize trigger

execute unless score #max_lang mb.menu.lang matches 1.. run scoreboard players set #max_lang mb.menu.lang 1
