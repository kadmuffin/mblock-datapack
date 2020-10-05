scoreboard objectives add mb.menu.lang dummy
scoreboard objectives add mb.menu.page dummy

scoreboard objectives add mb.tp trigger
scoreboard objectives add mb.play trigger
scoreboard objectives add mb.stop trigger
scoreboard objectives add mb.open trigger

scoreboard objectives add mb.tempo trigger
scoreboard objectives add mb.length trigger
scoreboard objectives add mb.height trigger
scoreboard objectives add mb.width trigger

scoreboard objectives add mb.floor.id trigger
scoreboard objectives add mb.gb.box_speed trigger
scoreboard objectives add mb.reset_sound trigger

execute unless score #max_lang mb.menu.lang matches 1.. run scoreboard players set #max_lang mb.menu.lang 1
