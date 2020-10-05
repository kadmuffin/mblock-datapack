scoreboard objectives add mb.floor dummy
scoreboard objectives add mb.bpm dummy
scoreboard objectives add mb.true_bpm dummy
scoreboard objectives add mb.bpm_accuracy dummy
scoreboard objectives add mb.max_accuracy dummy
scoreboard objectives add mb.dir dummy
scoreboard objectives add mb.travel dummy
scoreboard objectives add mb_x_pos dummy
scoreboard objectives add mb_z_pos dummy
scoreboard objectives add mb.id dummy
# Signatures:
scoreboard objectives add mb.sig.a dummy
scoreboard objectives add mb.sig.b dummy


scoreboard players set global mb.id 0

#scoreboard players set .bpm_div mb.true_bpm 112
scoreboard players set .bpm_div_s mb.true_bpm 60
scoreboard players set .bpm_div mb.true_bpm 2

scoreboard players set .bpm_div_def mb.true_bpm 5
scoreboard players set .bpm_div_nbs mb.true_bpm 67
scoreboard players set #2 mb.true_bpm 2
scoreboard players set #10 mb.true_bpm 10
scoreboard players set #100 mb.true_bpm 100
#scoreboard players set .multiplier mb.true_bpm 2
#scoreboard players set .multiplier mb.true_bpm 100


# Schedule functions at start
#function mblock:objects/music_player/plugins/note_player/schedule_update
#function mblock:objects/music_player/xyz_private/schedule_run_arrow
