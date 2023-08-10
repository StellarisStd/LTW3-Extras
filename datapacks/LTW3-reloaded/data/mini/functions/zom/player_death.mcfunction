# 玩家死亡时触发-koukou不写这个文件还要我来写
tag @s remove isOnZombie
gamemode spectator
tp @s 1101 31 1210
execute as @a at @s run function lib:sounds/error
#debug
tellraw @a[team=debugging] {"text":"[DEBUG] mini/zom/game_init called.","color": "green"}