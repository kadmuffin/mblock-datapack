execute if score CORE _plushieTMP matches 0 run scoreboard players set CORE _plushieSettings 0
execute if score CORE _plushieTMP matches 2 run scoreboard players set CORE _plushieSettings 2
execute if score CORE _plushieTMP matches 3 run scoreboard players set CORE _plushieSettings 3

execute unless score NATURALGEN _plushieTMP matches 1 run scoreboard players set NATURALGEN _plushieSettings 0
execute if score NATURALGEN _plushieTMP matches 1 run scoreboard players set NATURALGEN _plushieSettings 1
execute unless score CUSTOMGEN _plushieTMP matches 1 run scoreboard players set CUSTOMGEN _plushieSettings 0
execute if score CUSTOMGEN _plushieTMP matches 1 run scoreboard players set CUSTOMGEN _plushieSettings 1

execute if score RATE _plushieTMP matches 0 run scoreboard players set RATE _plushieSettings 0
execute if score RATE _plushieTMP matches 1 run scoreboard players set RATE _plushieSettings 1
execute if score RATE _plushieTMP matches 2 run scoreboard players set RATE _plushieSettings 2
execute if score RATE _plushieTMP matches 3 run scoreboard players set RATE _plushieSettings 3

execute if score RATE_C _plushieTMP matches 0 run scoreboard players set RATE_C _plushieSettings 0
execute if score RATE_C _plushieTMP matches 1 run scoreboard players set RATE_C _plushieSettings 1
execute if score RATE_C _plushieTMP matches 2 run scoreboard players set RATE_C _plushieSettings 2
execute if score RATE_C _plushieTMP matches 3 run scoreboard players set RATE_C _plushieSettings 3

execute if entity @a[tag=noDamageWorld] run scoreboard players set DAMAGE_WORLD _plushieSettings 0
execute if entity @a[tag=devKillAnyway] run scoreboard players set INSTANT_KILL _plushieSettings 0
execute if entity @a[tag=devExtendRange] run scoreboard players set EXTEND_RANGE _plushieSettings 0

execute if entity @a[tag=devSkills] run scoreboard players set SKILLS_LOOP _plushieSettings 1