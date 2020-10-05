execute as @s[tag=show_signature] if score #travel _aparse.z matches 1.. run function mblock:objects/area_parser/checks/block/floors/time_signature
execute as @s[tag=show_signature] unless score #travel _aparse.z matches 1.. run function mblock:objects/area_parser/checks/block/floors/after_signature
execute as @s[tag=!show_signature] run function mblock:objects/area_parser/checks/block/floors/after_signature
