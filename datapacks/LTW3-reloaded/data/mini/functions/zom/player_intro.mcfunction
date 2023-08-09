# 向单个玩家展示小游戏介绍
## 给予夜视效果
effect give @s night_vision 1000000 0 true
## 传送玩家到游戏场景
tp @s[team=!debugging] 1112.65 32.00 1209.66 0 0
## 向玩家展示介绍
tellraw @s ["",{"text":"\n >> 行尸走肉 >>\n\n","color":"gold","bold":true}," 别被僵尸打死即可 ",{"text":"活下来","color":"gold"},"。\n 为什么不试试坑人呢？\n\n",{"text": " <只能击退僵尸和玩家> ","color":"yellow"},{"text": " <免疫击退效果在本轮无效>","color":"light_purple"}]