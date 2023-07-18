scoreboard players add @s gold 243
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了一颗超级二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"green"}, ", 运气绝佳, 获得了 3 金块!"]
execute at @s run function lib:sounds/hit