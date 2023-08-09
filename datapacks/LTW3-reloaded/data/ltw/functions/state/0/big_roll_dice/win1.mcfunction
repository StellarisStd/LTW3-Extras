scoreboard players add @s gold 81
tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"selector": "@s","color":"aqua"}," 买了一颗超级二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"aqua"}, ", 拿回了自己的 1 金块!"]
execute at @s run function lib:sounds/hit2