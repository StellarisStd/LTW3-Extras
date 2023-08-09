# 调整物品：仅在纵向速度 < -0.015 且 y > 12 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=1100,y=36,z=1201,dx=26,dy=26,dz=26,scores={temp=-15..}] run data merge entity @s {NoGravity: 0b}
execute as @e[tag=bonus_item] unless entity @s[x=1100,y=36,z=1201,dx=26,dy=26,dz=26,scores={temp=-15..}] run data merge entity @s {NoGravity: 1b}