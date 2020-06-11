# MusicBlocks: Blocks as Notes (MC Datapack).
This datapack experiment makes blocks be able to play notes and simulate NoteBlocks without using any Repeaters (CONCEPT).

## Warning:
__Please do not use this datapack in your own world and use it on a new world, a lot of features modify the world and because this features may not be stable yet, they might break your world.__

## Installation:
This datapack is not ready yet, so for installing you would need to clone or download the repo and copy the mblock folder into your world's datapack folder.

## How to Use?
For start using the datapack first you have to create the MusicBlock Player!, Get an item frame and place it on top of a `note_block`, then place a arrow on the item frame.

### How to get all notes:
You can access all block notes by getting a structure block and loading the structure `mblock:notes`.

### How to get the NoteWand:
A Tool included to manage the music blocks is the NoteWand, you can obtain it by throwing a carrot on a stick on top of the MusicBlock Player or running `function mblock:objects/note_wand/get_wand`.

### Change area settings:
While holding the NoteWand, `Shift` + `Right-Click` on the MusicBlock Player, you will see on your chat a menu to manage this block.

Features like Overwrite Protection and Direction Protection aren't avaliable yet, others settings should work mostly fine.

__If you want to expand your area in the x (Length) or the y (Height) axis, take in account that it will generate a performance hit, so for basic testing or usage don't use big areas__, This area will cause a lot of lag when the blocks need to played as the code on the master branch generates is pretty slow.

### Can MIDI Files be loaded?
On the master branch this isn't still possible, please switch into the `load_nbs_file` branch for a python 3.x script to import NoteBlock Studio files.

The `load_nbs_file` requires click and pynbs,
for pynbs you would need to manually install a fork made by [Bentroen](https://github.com/Bentroen), Access his fork [here](https://github.com/Bentroen/pynbs/tree/format-update).

This branch only contains the basic version of the feature Copy & Paste on a single axis (the z one),
you can use it by throwing a noteblock on top of your MusicBlock Player, or you can use the code on the branch `copy_feature` that includes all axis.
