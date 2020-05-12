# Forces the end of the raycast
# Not the best solution, change if you are going to use it.
scoreboard players operation @s _rayc_tmp += #LimitDistance _rayc_tmp
scoreboard players add @s _rayc_tmp 1