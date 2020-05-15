# > On Block Hit File
#
# Place here any functions or commands
# that should be run when hitting a block 
# after raycasting.
#
# Here are some commands that should go here:
#  /function my_pack:my_function
#  /summon cow ~ ~ ~ 
#
# Avaliable tags at runtime:
#  - "sneaking"
#  - "clicking"
#  - "_off_hand"

# Includes premade plugins for this wand
execute unless score #disable_default _rayc_tmp matches 1 run function mblock:objects/note_wand/xyz_private/include_premade_plugins

# Runs an entity when a external plugin is required
execute if score #external_plugins _rayc_tmp matches 1 run function mblock:objects/note_wand/xyz_private/plugins
