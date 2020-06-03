tag @s add _old_item

execute at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run summon item ~ ~ ~ {Tags:[new_song,_saved],Item:{id:"minecraft:note_block",Count:1b,tag:{contains_song:1b,data:[],tmp:{tone:-1,sound:-1},song:{bpm:-1,zsize:-1,array_size:-1},display:{Name:"\"§7My Song!\"",Lore:["\"§6Song BPM:\"","\"Unknown\"","\"§6Travel Time:\"","\"Unknown\"","\"§6Array Size:\"","\"Unknown\""]}}},PickupDelay:-32768s,NoGravity:1b}

#data modify entity @e[tag=new_song,limit=1] Item set from entity @s Item

execute as @e[tag=new_song] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/item_reader/saving/prepare_song

kill @s