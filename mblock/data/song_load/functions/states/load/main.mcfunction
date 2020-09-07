scoreboard players reset #event_z sload_tmp
scoreboard players reset #event_id sload_tmp
function song_load:utils/events/get

execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].air run function song_load:states/load/air
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone run function song_load:states/load/note

function #mb_plugin:load

execute if data entity @s ArmorItems[3].tag.event if score @s sload >= #event_z sload_tmp run function song_load:states/load/event
