scoreboard players add #middle sload_tmp 1

execute if score #middle sload_tmp > song_xmiddle sload run summon armor_stand ~ ~ ~ {DisabledSlots: 72672, Invisible: 1b, NoGravity: 1b, Tags: [z_pointer_extra], ArmorItems: [{}, {}, {}, {id: "emerald_block", Count: 1b, tag: {}}]}

execute unless score #middle sload_tmp > song_xmiddle sload run function song_load:utils/summon/x_private/z_axis_2