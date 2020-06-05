# Get loaded version
function plushiemenu:updater/pack_version

# Get the old version number if it doesn't exist
execute unless score VERSION _plushieSettings matches 0.. unless score VERSION _plushieSettings matches ..0 run function plushiemenu:updater/utils/old_version_number

execute if score VERSION _plushieTMP2 = VERSION _plushieSettings run tellraw @s ["",{"text":"["},{"text":"Plushie","color":"gold"},{"text":"Wolf","color":"gray"},{"text":"] "},{"text":"Update Cancelled, the datapack version already matches with the world version!", "color":"red"}]
execute if score VERSION _plushieTMP2 > VERSION _plushieSettings run function plushiemenu:updater/sequence

scoreboard players reset VERSION _plushieTMP2