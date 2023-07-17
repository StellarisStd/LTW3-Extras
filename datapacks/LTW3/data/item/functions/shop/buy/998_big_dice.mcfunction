# 骰子 (9g)
tag @s remove canbuy
tag @s[scores={gold=81..}] add canbuy
tellraw @s[scores={gold=..80}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来赌骰子!","color":"red"}]
scoreboard players remove @s[tag=canbuy] gold 81
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function ltw:state/0/big_roll_dice/roll
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy