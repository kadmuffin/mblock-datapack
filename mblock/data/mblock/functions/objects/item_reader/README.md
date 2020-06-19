# Item Reader: Save my Notes, Load my Song!.
This folder focuses on the ability to load songs and saving them, the next documentation describes the saving format.

## The data format.

### Sound Settings
The sound settings are stored on the parameter `song` inside of the Item, this parameter holds the next data types:

Example settings:
```json
{
  "xsize": 4,
  "ysize": 3,
  "zsize": 15,
  "bpm": 90
}
```

### Notes
Notes contain a tone number (between 0 - 24) and a sound number (between 1 - 15, if no sound is store it's assumed that is 0 or harp), if a sound direction is specified is stored in a range of 0 to 5.

Sometimes for reducing memory usage the notes a group together when possible, for example 3 notes with the same tone and sound get store as one note with a count value that indicates how many times paste the note.

Here is a example note with all parameters:

```json
{"tone": 5, "sound": 1, "sound_dir": 3, "count": 12}
```

### Events
They are stored in `data.events`, there are 3 types of events (magenta still not supported), they range between 1 and 3, the datapack will ignore any events that has contains a 0 in the event tag, for example:

This will be ignored:
```json
{"event":0, "something": 1}
```

This due to minecraft data get command will return always zero if no value was found, so values that range 1-3 are used.

#### End & Repetition of Song

Events that range from 1 to 2 will be considered as end of song in the loading sequence an the proper event block will be placed, for 1 it will be `black_glazed_terracotta` that forces a song end, for 2 it will be `purple_glazed_terracotta` that repeats the song until stopped or moved from the center line.

```json
{"event":1}, // This is black glazed terracotta
{"event":2} // This is purple glazed terracotta
```

#### Redirection

The last event (still not supported) is redirection that uses the value 3, this one contains one extra parameter: `dir` that indicates the direction of the arrow:

```json
{"event":3, "dir": 0}, // This is magenta glazed terracotta facing west
{"event":3, "dir": 1}, // This is magenta glazed terracotta facing south
{"event":3, "dir": 2}, // This is magenta glazed terracotta facing east
{"event":3, "dir": 3} // This is magenta glazed terracotta facing north
```

### How 3D data is stored

All the data is stored in a array, each element is the data array represents a X-Axis from left to right.

For example:
```json
{
  "data": [
    [[{"note":0}],[{"note":0}]], // X - 1
    [[{"note":1}],[{"note":1}]], // X = 0
    [[{"note":0}],[{"note":0}]], // X + 1
  ]
}
```

Inside of each X-Axis Array there is data stored on the Z Axis, the index of the element represents the Y position of the element.

```json
[
  [{"note":0}], // Y = 0
  [{"note":2}] // Y + 1
]
```
