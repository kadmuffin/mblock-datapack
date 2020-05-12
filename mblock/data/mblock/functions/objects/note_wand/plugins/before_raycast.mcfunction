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

title @s[scores={_mbtmp1=0..},tag=holding_block,tag=_off_hand] actionbar ["",{"text":"Holding tone block number: ","color":"yellow"}, {"score":{"objective":"_mbtmp1","name":"@s"},"color":"blue"}]
