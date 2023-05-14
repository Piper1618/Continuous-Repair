# Repair tools for @s
# Any items in the hotbar and offhand slots will be repaired
# All armor will be repaired if any armor has sustained sufficient damage.

function con_rep:repair/01_setup_loop

# string comparison: _compare temp scoreboard value will be 1 for true or 0 for false
#storage con_rep:data compare set value "minecraft:iron_pickaxe"
#/execute store success score _compare temp run data modify storage con_rep:data compare set from storage con_rep:data inventory[0].id