tag @s remove east
tag @s remove west
tag @s remove south
tag @s remove north

tag @s[tag=!look_neg,scores={aparse.dir=0}] add south
tag @s[tag=look_neg,scores={aparse.dir=0}] add north
tag @s[tag=!look_neg,scores={aparse.dir=1}] add east
tag @s[tag=look_neg,scores={aparse.dir=1}] add west

tag @s[tag=note_player_center] add center
tag @s[tag=note_player_center] add floor
