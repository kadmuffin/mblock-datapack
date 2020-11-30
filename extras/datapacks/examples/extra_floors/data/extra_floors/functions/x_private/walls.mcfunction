execute if block ~ ~ ~ stone_brick_wall run setblock ~ ~ ~ air

execute if score @s[scores={mb.dir=0..1}] _aparse.x >= @s aparse.xsize run setblock ~ ~ ~ stone_brick_wall[south=low,north=low]
execute if score @s[scores={mb.dir=2..3}] _aparse.x >= @s aparse.xsize run setblock ~ ~ ~ stone_brick_wall[west=low,east=low]
setblock ~ ~-1 ~ grass_block