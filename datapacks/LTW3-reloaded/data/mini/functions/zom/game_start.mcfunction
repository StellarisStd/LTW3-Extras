# 游戏结束倒计时，这里为120秒
scoreboard players set $countdown mem 120
# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName health_disp
scoreboard objectives setdisplay sidebar health_alive
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 120
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"

# 所有玩家积分初始化
scoreboard players set @a zom_score 0
scoreboard players set @a zom_health 20
tag @a[tag=playing] add isOnZombie
setblock 1100 31 1204 repeating_command_block{"Command":"scoreboard players add @a[tag=isOnZombie] zom_score 1","conditionMet":"false","powered":"true","auto":"true"}