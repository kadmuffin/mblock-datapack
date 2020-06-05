# Preprocess the version number for display
function plushiemenu:updater/utils/split_current_version
function plushiemenu:updater/utils/split_pack_version
tellraw @a ["",{"text":"["},{"text":"Plushie","color":"gold"},{"text":"Wolf","color":"gray"},{"text":"] "},{"text":"Version ","color":"green"},{"text":"(v", "color":"gold"}, {"score":{"name":"VERSION_1", "objective":"_plushieSettings"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_2", "objective":"_plushieSettings"}, "color":"red"}, {"text":"."},{"score":{"name":"VERSION_3", "objective":"_plushieSettings"}, "color":"red"}, {"text":") ","color":"gold"},{"text":"detected, updating the next components to version ", "color":"green"}, {"text":"(v", "color":"gold"}, {"score":{"name":"VERSION_1", "objective":"_plushieTMP2"}, "color":"gold"}, {"text":"."},{"score":{"name":"VERSION_2", "objective":"_plushieTMP2"}, "color":"gold"}, {"text":"."},{"score":{"name":"VERSION_3", "objective":"_plushieTMP2"}, "color":"gold"}, {"text":")","color":"gold"},{"text":" : ","color":"green"}]


# Update Settings

execute if score VERSION _plushieSettings matches ..109 run function plushiemenu:updater/utils/update_old_settings
execute if score VERSION _plushieSettings matches ..110 run function plushiemenu:updater/utils/update_settings

execute if entity @e[tag=plushie_complete,tag=plushie_v1.5] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Outdated Plushies.","color":"yellow"}]
execute if entity @e[tag=plushie_complete,tag=!plushie_v1.5,tag=!plushie_v2] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Outdated Plushies.","color":"yellow"}]
execute if score VERSION _plushieSettings matches 110 if entity @e[tag=plushie_complete,tag=plushie_v2] run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Outdated Plushies.","color":"yellow"}]

execute if score VERSION _plushieSettings matches ..110 run execute as @e[tag=plushie_complete] run function plushiemenu:updater/utils/update_plushies

execute if score VERSION _plushieSettings matches ..109 run scoreboard players set USE_LEGACY_ID _plushieSettings 1

execute if score VERSION _plushieSettings matches ..110 run tellraw @a ["",{"text":" - ","color":"red"},{"text":" Settings storing location (Old Values will be conservated until later release).","color":"yellow"}]

execute if entity @a run function plushiemenu:updater/utils/finish_update

tellraw @a {"text":" "}