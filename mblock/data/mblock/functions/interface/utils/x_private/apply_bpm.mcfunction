scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] mb.bpm = @s mb.menu.bpm

execute if entity @e[tag=note_player] as @e[tag=music_player,sort=nearest,limit=1] run function mblock:objects/music_player/plugins/note_player/utils/bpm_update

execute if entity @e[tag=note_player] as @e[tag=music_player,sort=nearest,limit=1] run function mblock:interface/utils/x_private/copy_bpm