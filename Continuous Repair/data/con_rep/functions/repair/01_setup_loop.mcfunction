
scoreboard players set _feet temp 0
scoreboard players set _legs temp 0
scoreboard players set _chest temp 0
scoreboard players set _head temp 0
scoreboard players set _armor temp 0

data modify storage con_rep:data inventory set from entity @s Inventory

# Enter recursive loop to search through item slots
execute if data storage con_rep:data inventory[0] run function con_rep:repair/10_examine_slot

# Repair armor, if needed

execute if score _armor temp matches 1 run function con_rep:repair/30_repair_armor