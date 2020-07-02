scoreboard objectives add mb.menu.lang dummy
scoreboard objectives add mb.menu.page dummy

scoreboard objectives add mb.menu.tp trigger
scoreboard objectives add mb.menu.play trigger
scoreboard objectives add mb.menu.stop trigger
scoreboard objectives add mb.menu.bpm trigger
scoreboard objectives add mb.menu.zsize trigger
scoreboard objectives add mb.menu.ysize trigger
scoreboard objectives add mb.menu.xsize trigger
scoreboard objectives add mb.menu.floor trigger
scoreboard objectives add mb.gb.box_speed trigger
scoreboard objectives add mb.gb.floor_type trigger

execute unless score #max_lang mb.menu.lang matches 1.. run scoreboard players set #max_lang mb.menu.lang 1
