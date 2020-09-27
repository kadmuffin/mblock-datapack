scoreboard players add @s _box.travel 2
execute unless score @s _box.travel > @s box.y run tp ~ ~2 ~
execute if score @s _box.travel > @s box.y run tp ~ ~1 ~