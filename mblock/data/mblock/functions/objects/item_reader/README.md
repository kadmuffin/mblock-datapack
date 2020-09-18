# Item Reader: Save my Notes, Load my Song

This folder focuses on the ability to load songs and saving them, the next documentation describes the saving format.

## Sound Settings

The sound settings are stored on the parameter `song` inside of the Item, this parameter holds the next data types:

### Song Size

Since version `0.8.0` size isn't required as the load sequence corrects the size before placing notes, **but it is still recommended to specify them to maintain compatibility with version 0.7.0**.

```json
{
  "xsize": 4, // Not needed since version 0.8.0
  "ysize": 3, // Required when "force" is declared
  "zsize": 15, // Required when "force" is declared
  "bpm": 90
}
```

This will make the preview show `0` as the size isn't known until load is executed, so you may want to specify them to show an a value on preview.

### Disable Correction

The correction could cause some problems, if that's the case you can disable it.

```json
{
  ...
  "force_size": [0, 0, 1] // [x, y, z]
}
```

**You will have to make sure that your `ysize` matches or is bigger than the array dimensions manually.**

## Notes

Notes contain a tone number (between 0 - 24) and a sound number (between 0 - 15), if a sound direction is specified is stored in a range of 0 to 5.

```json
{ "tone": 0, "sound_dir": 4 }
```

Notes will be group (when possible) together for reducing memory usage:

Here is a example note with all parameters:

```json
{ "tone": 5, "sound": 0, "sound_dir": 3, "count": 12 }
```

## Events

They are stored in `data.events`, there are 4 types of built-in events:

Events with value 1-3 store the position using `z_pos`:

```json
{ "event": 1, "z_pos": 4 }
```

Newer events & custom events use the parameter `position`:

```json
// position: [x, y, z]
// when an axis uses -1, the axis uses default value
{ "event": 4, "position": [-1, -1, 4] }
```

**If the `position` property is invalid and there isn't any `z_pos` property, the load sequence will discard the event.**

### End & Repetition of Song

Events that range from one to two will be considered as the end of the song in the loading sequence, then proper event block will be placed, for 1 it will be `black_glazed_terracotta` that forces a song end, for 2 it will be `purple_glazed_terracotta` that repeats the song until stopped or moved from the centerline.

```json
({ "event": 1, "z_pos": 5 }, { "event": 2, "z_pos": 5 })
```

### Redirection

The last event is redirection that uses the value 3, this one contains one extra parameter: `dir` that indicates the direction of the arrow:

```json
({ "event": 3, "dir": 0, "z_pos": 2 },
{ "event": 3, "dir": 1, "z_pos": 2 },
{ "event": 3, "dir": 2, "z_pos": 2 },
{ "event": 3, "dir": 3, "z_pos": 2 })
```

## How 3D data is stored

All the data is stored in an array, each element is the data array represents an X-Axis from left to right.

For example:

```python
{
  "data": [
    [[{"note":0}],[{"note":0}]], # X - 1
    [[{"note":1}],[{"note":1}]], # X = 0
    [[{"note":0}],[{"note":0}]], # X + 1
  ]
}
```

Inside of each X-Axis Array, there is data stored on the Z-Axis, the index of the element represents the Y position of the element.

```python
[
  [{"note":0}], # Y = 0
  [{"note":2}] # Y + 1
]
```

## Example Item.tag

This Item.tag contains three sequential notes (note: 15), the code is formatted as a json to make it more readable:

```python
{
 "contains_song": 1,
 "song": {
  "xsize": 3,
  "ysize": 2,
  "zsize": 4,
  "bpm": 35,
  "gb_sound": 0,
   # Raw BPM (debug only):
   # 0 = False, 1 = True (with double)
   # 2 = True (without double)
  "raw_bpm": 0,
  "comp_bpm": 0, # 0 = False, 1 = True
  "nbs_bpm": 0, # 0 = False, 1 = True
},
 "data": {
  "notes": [ # X - 1
    [
      [{"tone": 15},{"tone": 15},{"tone": 15}]
    ]
  ],
  "events": [
    {
      "event": 1,
      "z_pos": 4
    },
    { # Custom Event Example
      "event": 7,
      "position": [-1, -1, 6]
    }
  ]
 }
}
```
