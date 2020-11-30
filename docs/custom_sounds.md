# Custom Sounds

> __*Before using this feature, check that you have the rights of the sounds used.*__

## Resourcepacks

This feature makes use of resource packs for sound playing, so you will need to make a ResourcePack first.

Read more about creating a Resourcepacks on the Minecraft Wiki [here](https://minecraft.gamepedia.com/Tutorials/Creating_a_resource_pack).

### Extra Octaves

Extra Octaves are supported by adding at the end of the file name the prefix `_1` or `_-1`:

```python
# Base Octave (F#4)
'my_sound.ogg'
# +1 Octave (F#6)
'my_sound_1.ogg'
# -1 Octave (F#2)
'my_sound_-1.ogg'
```

For this to work, the sound files have to be on a lower/higher tone.

## IDs

Custom Sounds datapack have an ID that identifies their sounds:

```text
Pack ID: 16 (default)
Sounds 1: 16
Sounds 2: 17
Sounds 3: 18
...
```

The SoundPack ID shouldn't be changed unless using multiple SoundPacks.
