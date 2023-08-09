# 初始化地图
forceload add 1101 1201 1127 1227
setblock 1100 30 1202 structure_block[mode=load]{metadata: "", mirror: "NONE",ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, posY: 1,posZ: 0, sizeX: 26, sizeY: 26, sizeZ: 26, mode: "LOAD", integrity: 1.0f, showair:0b, name: "mini:zombie"}
setblock 1100 31 1202 redstone_block

scoreboard players set $show_score mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
## 重置每0.1秒减少1的计时器，这条命令仅在你的游戏不需要使用这类计时器的情况下添加
scoreboard players set $countdown_fast mem 600
# 伤害管理
## 官方的函数中总有这一条，原本是用来控制消除金苹果/附魔金苹果/不死图腾产生的伤害吸收效果的，但是这
##个值设为0或1都会清除效果，所以设置这个值似乎并没有什么意义
scoreboard players set $remove_resistance mem 0
## 是否能够对玩家造成伤害与击退
team modify playing friendlyFire true
## 玩家碰撞设定
team modify playing collisionRule always
## 是否显示玩家的死亡信息
team modify playing deathMessageVisibility always
## 火焰伤害是否启用
gamerule fireDamage false
## 摔落伤害是否启用
gamerule fallDamage false
## 溺水伤害是否启用
gamerule drowningDamage false
## 自然生命恢复是否启用
gamerule naturalRegeneration true
schedule function mini:koth/game_init2 15t replace
#debug info
tellraw @a[team=debugging] {"text":"[DEBUG] mini/zom/game_init called.","color": "green"}