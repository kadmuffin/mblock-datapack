scoreboard players operation @s mb.true_bpm = @s mb.bpm
scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm
scoreboard players operation @s[tag=nbs_bpm] mb.true_bpm *= #10 mb.true_bpm
scoreboard players operation @s mb.true_bpm /= .bpm_div_s mb.true_bpm
scoreboard players operation @s[tag=!nbs_bpm] mb.true_bpm /= .bpm_div_def mb.true_bpm
scoreboard players operation @s[tag=nbs_bpm] mb.true_bpm /= .bpm_div_nbs mb.true_bpm
scoreboard players operation @s[tag=compress_bpm] mb.true_bpm /= .bpm_div mb.true_bpm

#scoreboard players operation @s mb.true_bpm += .multiplier mb.true_bpm
