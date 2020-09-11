# Summon Target Event
summon armor_stand ~ ~ ~ {Tags: [save_event, new_save_event, event_sequence], Invisible: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "command_block", Count: 1b, tag: {event: {}}}], DisabledSlots: 72682}

# Copy Data
scoreboard players operation @e[tag=new_save_event,limit=1] sload = @s sload
scoreboard players operation @e[tag=new_save_event,limit=1] sload_mov = @e[tag=y_pointer,limit=1] sload
scoreboard players operation @e[tag=new_save_event,limit=1] sload_tmp2 = @e[tag=x_pointer,limit=1] sload

tag @e[tag=new_save_event,limit=1] remove new_save_event

tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ", "color": "dark_gray"}, {"text": "Creating Save Event Entity for detected block!","color": "gold"},{"text": " X: ","color": "gray"},{"score": {"name": "@e[tag=x_pointer,limit=1]","objective": "sload"},"color": "blue"},{"text": " Y: ","color": "gray"},{"score": {"name": "@e[tag=y_pointer,limit=1]","objective": "sload"},"color": "blue"},{"text": " Z: ","color": "gray"},{"score": {"name": "@e[tag=z_pointer,limit=1]","objective": "sload"},"color": "blue"}]