# > NoteWand: A Tool while building songs with this datapack.
#
# Let's you manage more easy what blocks are notes,
# for external plugins look the setup notes
# in the file ./xyz_private/plugins.mcfunction
#
# If you want to use this folder in your datapack do this:
#
# - Edit the main and others file to fit your needs and paths (like changing the wand tag)
# - Delete all built-in plugins as they depends on this datapack
# - Remove the include function in the file plugins/on_block_hit.mcfunction
# - Remove the throw event function in the file plugins/on_wand_throw.mcfunction
# - Remove the title command on plugins/before_raycast.mcfunction
# - Delete the next files:
#    * xyz_private/change_lang.mcfunction
#    * xyz_private/include_premade_plugins.mcfunction

scoreboard objectives add _rayc_tmp dummy
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard players set #LimitDistance _rayc_tmp 8
