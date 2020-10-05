scoreboard players operation #tmp _aparse.tmp %= #sig_b _aparse.tmp

execute if score #tmp _aparse.tmp matches 0 run function mblock:objects/area_parser/checks/block/floors/x_private/signature_2
execute unless score #tmp _aparse.tmp matches 0 run function mblock:objects/area_parser/checks/block/floors/after_signature