# 观察者限制飞行范围
## dx dy dz确定范围大小，可用确定的两点对应坐标相减获得这三个值
execute as @a[gamemode=spectator] unless entity @s[x=1100,y=29,z=1201,dx=26,dy=26,dz=26] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1100,y=29,z=1201,dx=26,dy=26,dz=26] run tp @s[team=!debugging] 1112.65 32.00 1209.66 0 0