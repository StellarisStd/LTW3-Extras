# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2
# 90s：双倍提示
execute if score $countdown mem matches 90 run title @a subtitle {"text":"⚠ 还有90秒！ ⚠","color":"yellow"}
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon minecraft:zombie 1111.67 48.00 1214.60 {Attributes:[{Name:"generic.max_health",Base:100d}],Health:100f} 
execute if score $countdown mem matches 90 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 90 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 90 run summon minecraft:zombie 1112.48 33.00 1224.44 {Attributes:[{Name:"generic.max_health",Base:100d}],Health:100f}
execute if score $countdown mem matches 90 run title @a times 1 90 3
execute if score $countdown mem matches 90 run title @a title ""
## 更改bossbar颜色为黄色，下同
execute if score $countdown mem matches 90 run scoreboard players set $bossbar_color mem 2
## bossbar颜色更改需要重新调用show方法，下同
execute if score $countdown mem matches 90 run function lib:bossbar/show
# 60s：双倍开启
## 这里不直接调整能量值的给予量，给予1点还是2点能量值会在tick5里面判定
## 更改BGM
execute if score $countdown mem matches 61 as @a run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 还有60秒！ ⚠","color":"red"}
execute if score $countdown mem matches 60 run title @a times 1 120 3
execute if score $countdown mem matches 60 run title @a title ""
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 60 run function lib:bossbar/show
execute if score $countdown mem matches 60 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 60 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 60 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 60 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 60 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 60 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 60 run summon zombie 1111.67 48.00 1214.60 
execute if score $countdown mem matches 60 run summon zombie 1112.48 33.00 1224.44
execute if score $countdown mem matches 60 run summon minecraft:zombie 1111.67 48.00 1214.60 {Attributes:[{Name:"generic.max_health",Base:100d}],Health:100f} 
execute if score $countdown mem matches 60 run summon minecraft:zombie 1112.48 33.00 1224.44 {Attributes:[{Name:"generic.max_health",Base:100d}],Health:100f}
## 播放音效
execute if score $countdown mem matches 60 run playsound minecraft:entity.ender_dragon.growl player @a 0 900000 0 900000 1.5
# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0
# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1100,y=29,z=1201,dx=26,dy=26,dz=26] run scoreboard players set #new_item mem 1
# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1
# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:zom/game/new_item

effect give @e[type=zombie] health_boost 10 10
