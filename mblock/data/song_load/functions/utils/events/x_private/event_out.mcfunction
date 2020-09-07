# Summon Target Event
summon armor_stand ~ ~ ~ {Tags: [load_event, new_load_event], Invisible: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "command_block", Count: 1b, tag: {event: {}}}], DisabledSlots: 72682}

# Copy Data
data modify entity @e[tag=new_load_event,limit=1] ArmorItems[3].tag.event set from entity @s ArmorItems[3].tag.event
scoreboard players operation @e[tag=new_load_event,limit=1] mb_id = #event_id sload_tmp

tag @e[tag=new_load_event,limit=1] remove new_load_event

tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ", "color": "dark_gray"}, {"text": "Couldn't load event directly, running pop() & copying event to armor_stand, Event ID: ","color": "gold"},{"score": {"name": "#event_id","objective": "sload_tmp"},"color": "blue"},{"text": " with Z-Position: ","color": "gold"},{"score": {"name": "#event_z","objective": "sload_tmp"},"color": "blue"}]

# Pop Event
function song_load:utils/events/pop