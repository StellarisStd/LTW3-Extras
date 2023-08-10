# 玩家死亡时触发-koukou不写这个文件还要我来写
tag @s remove isOnZombie
gamemode spectator
execute as @a at @s run function lib:sounds/error
function mini:main/player_failed
#debug
tellraw @a[team=debugging] {"text":"[DEBUG] mini/zom/player_death called.","color": "green"}