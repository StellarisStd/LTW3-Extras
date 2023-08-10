# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:zom/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration true

# 传送玩家
tp @s[team=playing] 1112.65 32.00 1209.66 0 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 解除免疫击退效果
attribute @s[team=playing,tag=!rejoining] generic.knockback_resistance modifier add e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5 "" -1.0 multiply
# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

#tag
#tag-zom
tag @a[team=playing] add isOnZombie