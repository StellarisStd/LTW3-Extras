# 玩家死亡时触发-koukou不写这个文件还要我来写
tag @s remove isOnZombie
gamemode spectator
execute as @a at @s run function lib:sounds/error
function mini:main/player_failed
scoreboard players add @a[tag=isOnZombie] zom_score 1
#debug
tellraw @a[tag=debuger] {"text":"[DEBUG] mini/zom/player_death called.","color": "green"}