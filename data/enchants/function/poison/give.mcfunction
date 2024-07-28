title @s actionbar {"text":"$(duration)"}
execute store success score @s enchants.temp.success run effect clear @s
$execute if entity @s[scores={enchants.temp.success=1..}] run effect give @s $(id) $(duration) $(amplifier)