function song_load:utils/notes/set
function song_load:utils/events/set

function #mb_plugin:save

execute if data entity @s ArmorItems[3].tag.note if block ~ ~ ~ #mblock:octaves run function song_load:states/save/note
execute if data entity @s ArmorItems[3].tag.note unless block ~ ~ ~ #mblock:octaves unless block ~ ~ ~ bedrock run function song_load:states/save/air

function song_load:states/save/event