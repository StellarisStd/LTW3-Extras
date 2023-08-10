# 当前游戏结束时触发
forceload remove 1101 1201 1127 1227
# 解除限制免疫击退
execute as @a run attribute @s generic.knockback_resistance modifier remove e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5
# 解除场地生成限制
setblock 1100 31 1202 air
# 停止积分
setblock 1100 31 1204 air
tag @a[team=playing] remove isOnZombie
# 计算积分
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s zom_score