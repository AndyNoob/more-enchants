$scoreboard players set @s enchants.temp.poisonTime $(duration)
scoreboard players operation @s enchants.temp.poisonTime -= 1 enchants.temp.poisonTime
title @s actionbar {"text":"hi"}
$execute store result entity @s active_effects[{id:"$(id)"}].duration int 1 run scoreboard players get @s enchants.temp.poisonTime