scoreboard players operation #tmp _aparse.tmp = #travel _aparse.z
scoreboard players remove #tmp _aparse.tmp 1

scoreboard players operation #tmp _aparse.tmp %= #sig_a _aparse.tmp

execute if score #tmp _aparse.tmp matches 0 run function mblock:objects/area_parser/checks/block/floors/x_private/signature_1
execute unless score #tmp _aparse.tmp matches 0 run function mblock:objects/area_parser/checks/block/floors/x_private/beat