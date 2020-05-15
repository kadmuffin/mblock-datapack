# > External Plugins
#
# This file manages the entity used in
# external plugins, but it has a performance
# hit, so consider adding a new plugin
# directly (go to line 27).
#
# > External plugins
#
# External plugins can't interact with a player
# that used the wand, for this you will have to look
# for the nearest player with the tag: 
#  - "_using_wand"
#
# If you are going to use this feature,
# turn it on with: 
#   /scoreboard players set #external_plugins _rayc_tmp 1
#
# Example plugin code that should be run in your loop function:
#  /execute as @e[tag=_block_hit] at @s if block ~ ~ ~ stone run setblock ~ ~ ~ air
#
# Supported tags:
# - "clicking"
# - "sneaking"
# - "_off_hand"
# 
# > Internal plugins
#
# Inside Plugins have more control information of the
# raycast state (like acessing the player that used the wand directly),
# and the performance hit is pretty minimum.
#
# For creating a internal plugin follow this small tutorial:
#
# 1. Create a folder inside plugins with the plugin name "stone_to_wool".
# 2. Create a main.mcfunction file.
# 3. Inside this file add the next command:
#      execute as @s if block ~ ~ ~ stone run setblock ~ ~ ~ white_wool 
# 4. Call your function in the file inside of plugins/on_block_hit.mcfunction
#    * For example in this datapack that would be:
#      /function mblock:objects/note_wand/plugins/stone_to_wool/main
# 5. Now try it out by looking at a stone block.
# 6. For more info about avaliable tags look at the file ../setup.mcfunction
#
# Supported tags:
# - "clicking"
# - "sneaking"
# - "_off_hand"
# 

# Code for External Plugins support.

# Create an entity that lives for 1s
execute unless entity @e[tag=_block_hit,distance=0] run summon area_effect_cloud ~ ~ ~ {Age:-20,Tags:["_block_hit","_new_hit"],Particle:"block air"}

# Copy player tags to entity
execute if entity @s[tag=clicking] run tag @e[tag=_new_hit,limit=1] add clicking
execute if entity @s[tag=sneaking] run tag @e[tag=_new_hit,limit=1] add sneaking
execute if entity @s[tag=_off_hand] run tag @e[tag=_new_hit,limit=1] add _off_hand
tag @e[tag=_new_hit,limit=1] remove _new_hit