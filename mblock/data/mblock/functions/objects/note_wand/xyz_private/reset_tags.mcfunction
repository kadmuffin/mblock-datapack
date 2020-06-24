scoreboard players set @a[tag=clicking] carrot 0
scoreboard players set @a[tag=sneaking] sneak 0

# External Plugins related, remove if not using
tag @a[tag=_using_wand] remove _using_wand
tag @a[tag=_using_inverted] remove _using_inverted

execute as @e[tag=_block_hit] at @s if block ~ ~ ~ air run kill @s
