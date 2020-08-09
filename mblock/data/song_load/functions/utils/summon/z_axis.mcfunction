scoreboard players add #middle sload_tmp 1

execute if score #middle sload_tmp >= song_xmiddle sload run summon armor_stand ~ ~ ~ {DisabledSlots: 72672, Invisible: 1b, NoGravity: 1b, Tags: [load, z_pointer, new_pointer, space_precompute], ArmorItems: [{}, {}, {}, {id: "player_head", Count: 1b, tag: {SkullOwner: {Id: "d3dd0fce-9514-4321-af5f-76da153fde98", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2UxZjNjYzYzYzczYTZhMWRkZTcyZmUwOWM2YWM1NTY5Mzc2ZDdiNjEyMzFiYjc0MDc2NDM2ODc4OGNiZjFmYSJ9fX0="}]}}}}]}

execute unless score #middle sload_tmp >= song_xmiddle sload run function song_load:utils/summon/x_private/z_axis