scoreboard players operation #sig_a _aparse.tmp = @s mb.sig.a
scoreboard players operation #sig_b _aparse.tmp = @s mb.sig.b
execute if score @s mb.sig.b matches 1 run scoreboard players set #sig_b _aparse.tmp 16
execute if score @s mb.sig.b matches 2 run scoreboard players set #sig_b _aparse.tmp 8
execute if score @s mb.sig.b matches 4 run scoreboard players set #sig_b _aparse.tmp 4
execute if score @s mb.sig.b matches 8 run scoreboard players set #sig_b _aparse.tmp 2
execute if score @s mb.sig.b matches 12 run scoreboard players set #sig_b _aparse.tmp 3

scoreboard players operation #sig_a _aparse.tmp *= #sig_b _aparse.tmp

execute as @s[tag=compress_bpm] run scoreboard players operation #sig_a _aparse.tmp /= #2 _aparse.tmp
execute as @s[tag=compress_bpm] run scoreboard players operation #sig_b _aparse.tmp /= #2 _aparse.tmp
