execute as @s[tag=!valid_signature] run summon area_effect_cloud ~ ~.5 ~ {Duration: 60, Age: 0, WaitTime:0, Tags:[bpm_addon_show],CustomName:'"§aBPM Addon: §cInvalid Signature.b!"',CustomNameVisible:1b}
execute as @s[tag=valid_signature] run summon area_effect_cloud ~ ~.5 ~ {Duration: 60, Age: 0, WaitTime:0, Tags:[bpm_addon_show],CustomName:'"§aBPM Addon!"',CustomNameVisible:1b}

function bpm_addon:utils/get_bpm
execute as @s[tag=valid_signature] run title @a[distance=0..3] actionbar ["",{"text": "BPM: ", "color": "blue"},{"score":{"name": "#bpm","objective":"_mbtmp"},"color": "gold"},{"text":" Time Signature: ","color":"blue"},{"score":{"name":"@s","objective":"mb.sig.a"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@s","objective":"mb.sig.b"},"color":"gold"}]
execute as @s[tag=!valid_signature] run title @a[distance=0..3] actionbar ["",{"text": "BPM: ", "color": "blue"},{"score":{"name": "#bpm","objective":"_mbtmp"},"color": "gold"},{"text":" Time Signature: ","color":"blue"},{"score":{"name":"@s","objective":"mb.sig.a"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"#signat_b","objective":"_mbtmp"},"color":"red"}]
