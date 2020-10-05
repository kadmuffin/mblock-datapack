execute if block ~ ~-1 ~ #mblock:soundable if block ~ ~ ~ air run setblock ~ ~-1 ~ air

execute unless block ~ ~-1 ~ #mb_plugin:floor/not_replaceable run function mblock:objects/area_parser/checks/block/floors/x_private/floors