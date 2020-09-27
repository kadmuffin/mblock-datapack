tag @s add render_kill
execute as @e[tag=box_render,tag=z_step] if score @s mb.id = @e[tag=render_kill,limit=1] mb.id run kill @s
tag @s remove render_kill