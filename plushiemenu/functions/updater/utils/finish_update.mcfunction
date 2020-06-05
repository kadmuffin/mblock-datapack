function plushiemenu:updater/utils/clear_split_version

scoreboard players operation VERSION _plushieSettings = VERSION _plushieTMP2

scoreboard players reset VERSION _plushieTMP
scoreboard players reset VERSION _plushieTMP2
scoreboard players reset GLOBAL _plushieTMP