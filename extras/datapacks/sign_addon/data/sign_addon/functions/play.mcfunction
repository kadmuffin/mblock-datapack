execute store result score #length _mbtmp run data get block ~ ~ ~ Text1
execute if score #length _mbtmp matches 12.. run data modify entity @s CustomName set from block ~ ~ ~ Text1
execute if score #length _mbtmp matches 12.. run function sign_addon:x_private/print_title

execute store result score #length _mbtmp run data get block ~ ~ ~ Text2
execute if score #length _mbtmp matches 12.. run data modify entity @s CustomName set from block ~ ~ ~ Text2
execute if score #length _mbtmp matches 12.. run function sign_addon:x_private/print_subtitle

execute store result score #length _mbtmp run data get block ~ ~ ~ Text3
execute if score #length _mbtmp matches 12.. run data modify entity @s CustomName set from block ~ ~ ~ Text3
execute if score #length _mbtmp matches 12.. run function sign_addon:x_private/print_actionbar

function mblock:utils/end_event