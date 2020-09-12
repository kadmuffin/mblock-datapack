scoreboard players set @s[tag=!look_neg,scores={aparse.dir=0}] mb.dir 0
scoreboard players set @s[tag=look_neg,scores={aparse.dir=0}] mb.dir 1
scoreboard players set @s[tag=look_neg,scores={aparse.dir=1}] mb.dir 2
scoreboard players set @s[tag=!look_neg,scores={aparse.dir=1}] mb.dir 3

tellraw @a {"score":{"objective":"mb.dir","name":"@s"}}