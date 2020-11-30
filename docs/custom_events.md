# Custom Events

This events can be implemented as separate datapacks that modify the elements through the use of function/block tags.

Check the [Examples](https://github.com/kadmuffin/mblock-datapack/tree/master/extras/datapack/examples) folder for datapack examples.

## Direct Access

Functions using the following tags will run directly on the entity, having access to scoreboards, *but will count as part of the total command count*.

### Playing Songs related (WIP)

Here is a List of event related Function Tags:

1. `play/loop.json` Functions added here will have access to the main loop in each of Note Player.

2. `play/event.json` Functions added here will be running directly on the block detection function.

3. `play/event_center.json` Functions here run on the main Note Player block detection (The Center Block).

Datapacks using methods (2, 3) should use the following function to end the event:

```mcfunction
function mblock:utils/end_event
```

### Saving/Loading Events

Here is a List of event related Function Tags:

1. `save/event.json` Functions here will run on the save event function.

2. `load/event.json` Functions here will run on the load event function.

Here is a example code for saving, this is the detection:

```mcfunction
# save.mcfunction

execute if block ~ ~ ~ stone run function pack:save_handler
```

Here is the handler:

```mcfunction
# save_handler.mcfunction

# Set Data
data modify entity @s ArmorItems[3].tag.event set value {id: 50, items:0}

# Modify data
data modify entity @s ArmorItems[3].tag.event.items set from block ~ ~ ~ Items[0].Count

# Push Event
function song_load:utils/events/push
```

And this the tag file:

```python
# mb_plugin/tags/functions/save/event.json
{
  "values": ["pack:save"]
}
```

## External Access

Functions using the following tags will run on a summoned entity, *your commands will not count as part of the total command count*.

You will have to include your block on `mb_plugin/tags/blocks/event.json` and on `mb_plugin/tags/blocks/save/event.json`.

### Playing related Events (WIP)

Events can't access the main entity, so you may need to search for the nearest Note Player Entity like this:

```mcfunction
tag @e[tag=note_player,sort=nearest,distance=0..0.5,limit=1] add some_tags
```

You have to call the the following function at the end of the event:

```mcfunction
function mblock:utils/end_event
```

### Saving/Loading Related

The Code used for direct access can be used without change most of the time.

For example the code for the save handler will be the same but the detection isn't:

```mcfunction
# main.mcfunction

# Save Detection
execute as @e[tag=save_event,tag=!my_tag] if block ~ ~ ~ stone run function pack:save

# Load Detection
execute as @e[tag=load_event,scores={mb.id=50}] run function pack:load
```

At the end of the load event sequence you should kill the entity.

## Some Scoreboards

Here are some useful scoreboards:

* `_mbtmp` Used to set `#tone` and `#sound` and more variables.

* `mb.dir` Stores the moving direction.

* `mb.bpm` Stores the BPM of the song.

* `mb_x_pos` Stores the X position.

* `mb_y_pos` Stores the Y position.

* `sload_tmp` TMP

* `sload_tmp2` TMP

* `sload_tmp3` TMP