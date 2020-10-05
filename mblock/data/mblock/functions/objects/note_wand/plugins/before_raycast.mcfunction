# > Before Raycasting File
#
# Place here any functions or commands
# that should be run before any raycasting.
#
# Here is a example command that should go here:
#  /say starting raycasting!
#
# Here is a example of what shouldn't be here:
#  /particle barrier ~ ~ ~

#scoreboard players add @s[tag=holding_block,tag=!_off_hand] mb_tmp3 1
#title @s[scores={_mbtmp1=0..,mb_tmp3=40..},tag=holding_block,tag=!_off_hand] actionbar ["",{"text":"Holding tone block number: ","color":"yellow"}, {"score":{"objective":"_mbtmp1","name":"@s"},"color":"blue"}]
#scoreboard players reset @s[scores={_mbtmp1=0..,mb_tmp3=40..}] mb_tmp3

#title @s[tag=_off_hand] actionbar {"text": "You are on ", "color":"blue"},{"text":"Copy & Save", "color": "red"},{"text":" mode!", "color": "blue"}
#title @s[tag=!_off_hand] actionbar {"text": "You are on ", "color":"blue"},{"text":"Change Tone", "color": "green"},{"text":" mode!", "color": "blue"}

scoreboard players set @s[tag=_off_hand] _aparse.x 0

# Adds a tag to the player for external plugins
execute if score #external_plugins _rayc_tmp matches 1 run tag @s add _using_wand
