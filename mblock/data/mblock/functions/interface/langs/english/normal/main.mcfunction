function mblock:interface/utils/draw_line
function mblock:interface/utils/draw_title

# BPM: < [180] >
function mblock:interface/langs/english/normal/bpm
# Avaliable Height: < [4] >
function mblock:interface/langs/english/normal/height_size
# Avaliable Width: < [3] >
function mblock:interface/langs/english/normal/width_size
# Song Length: < [15] >
function mblock:interface/langs/english/normal/song_length

function mblock:interface/utils/jump_line


# [x] Show Celling
function mblock:interface/langs/english/normal/show_top

# [x] Show Signature
function mblock:interface/langs/english/normal/show_signature

# [x] Simpler Rendering
function mblock:interface/langs/english/normal/lighter_render

execute if entity @e[tag=music_player] run tellraw @s {"text": "--------","color": "gray"}

# [x] Compress BPM
function mblock:interface/langs/english/normal/bpm_related

function mblock:interface/utils/jump_line

function mblock:interface/langs/english/normal/play_and_stop


function mblock:interface/utils/jump_line
function mblock:interface/utils/end_line
