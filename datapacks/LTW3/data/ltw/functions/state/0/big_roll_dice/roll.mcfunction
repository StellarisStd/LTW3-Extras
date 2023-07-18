
# 丢骰子
scoreboard players set $random_min mem 1
scoreboard players set $random_max mem 20
function lib:random

# 20 / 5% 大成功：获得 9 金块
execute if score $random mem matches 20 run function ltw:state/0/big_roll_dice/super_win

# 18-19 / 10%：获得 3 金块
execute if score $random mem matches 18..19 run function ltw:state/0/big_roll_dice/win3

# 15-17 / 15%：获得 2 金块
execute if score $random mem matches 15..17 run function ltw:state/0/big_roll_dice/win2

# 10-14 / 65%：返还 1 金块
execute if score $random mem matches 2..14 run function ltw:state/0/big_roll_dice/win1

# 1 / 5% 大失败：归零
execute if score $random mem matches 1 run function ltw:state/0/big_roll_dice/super_lose