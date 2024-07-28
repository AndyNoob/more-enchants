$scoreboard players set @s enchants.temp.poisonTime $(duration)
scoreboard players operation @s enchants.temp.poisonTime -= 10 enchants.temp.poisonTime
scoreboard players operation @s enchants.temp.poisonTime /= 20 enchants.temp.poisonTime
$data modify storage enchant:temp {} set value {id: "$(id)", amplifier: "$(amplifier)", duration: $(duration)}
$data modify storage enchant:temp {} merge from entity @s active_effects[{id: "$(id)"}]
data merge storage enchant:temp {show_particles: 1b}
$title @s title {"text":"$(id)"}
execute store result storage enchant:temp duration int 1 run scoreboard players get @s enchants.temp.poisonTime

function enchants:poison/give with storage enchant:temp