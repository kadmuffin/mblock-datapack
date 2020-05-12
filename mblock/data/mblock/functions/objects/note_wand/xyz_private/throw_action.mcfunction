execute as @p[nbt={OnGround:1b},dx=0,limit=1] run function mblock:objects/note_wand/plugins/on_wand_throw

tp @s @p[nbt={OnGround:1b},dx=0,limit=1]
data modify entity @s PickupDelay set value 0
