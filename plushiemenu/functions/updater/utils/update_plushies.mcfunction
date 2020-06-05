execute if score VERSION _plushieSettings matches ..106 run data modify entity @s[tag=hasSkill] ArmorItems[3].tag.countSkill set value 1b
tag @s add plushie_not_looped
tag @s add plushie_complete
tag @s[tag=!plushie_v1_5] add naturalGen
tag @s remove plushie_v1_5
tag @s add plushie_v2

function plushiewolf:cores/experimental/plushie/check_skills

scoreboard players set @s[tag=mining] _plushieMaxPoint 200
scoreboard players set @s[tag=heart] _plushieMaxPoint 200
scoreboard players set @s[tag=luck] _plushieMaxPoint 600
scoreboard players set @s[tag=fire] _plushieMaxPoint 300
scoreboard players set @s[tag=tnt] _plushieMaxPoint 300
scoreboard players set @s[tag=whiteAttack] _plushieMaxPoint 400
scoreboard players set @s[tag=blackAttack] _plushieMaxPoint 400
scoreboard players set @s[tag=bubbleAttack] _plushieMaxPoint 600
scoreboard players set @s[tag=whiteAttack_2] _plushieMaxPoint 400

tag @s[tag=blackAttack] add maxAsPLimit
tag @s[tag=whiteAttack] add maxAsPLimit
tag @s[tag=bubbleAttack] add maxAsPLimit

tag @e[type=wolf,sort=nearest,limit=1,tag=trackedWolf,tag=!_wolf] add _wolf