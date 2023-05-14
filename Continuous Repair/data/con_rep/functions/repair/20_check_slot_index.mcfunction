
execute store result score _slot temp run data get storage con_rep:data inventory[0].Slot

# Check for hotbar and offhand slots, repairing these immediately if found
execute if score _slot temp matches 0 run item modify entity @s hotbar.0 con_rep:fully_repair
execute if score _slot temp matches 1 run item modify entity @s hotbar.1 con_rep:fully_repair
execute if score _slot temp matches 2 run item modify entity @s hotbar.2 con_rep:fully_repair
execute if score _slot temp matches 3 run item modify entity @s hotbar.3 con_rep:fully_repair
execute if score _slot temp matches 4 run item modify entity @s hotbar.4 con_rep:fully_repair
execute if score _slot temp matches 5 run item modify entity @s hotbar.5 con_rep:fully_repair
execute if score _slot temp matches 6 run item modify entity @s hotbar.6 con_rep:fully_repair
execute if score _slot temp matches 7 run item modify entity @s hotbar.7 con_rep:fully_repair
execute if score _slot temp matches 8 run item modify entity @s hotbar.8 con_rep:fully_repair

execute if score _slot temp matches -106 run item modify entity @s weapon.offhand con_rep:fully_repair

# Search for armor, deferring the repair until later.
# We'll repair all of them at once if ANY of them need repair. This is done
# because repairing any armor causes the player to hear the sound of equipping
# armor.
# I'm checking each slot for damage based on the weakest armor type that could
# be in that slot (leather). To make repairs happen less frequently, checking
# against the durability of the specific armor item would be better.
execute if score _slot temp matches 100 if score _damage temp matches 55.. run scoreboard players set _armor temp 1
execute if score _slot temp matches 101 if score _damage temp matches 65.. run scoreboard players set _armor temp 1
execute if score _slot temp matches 102 if score _damage temp matches 70.. run scoreboard players set _armor temp 1
execute if score _slot temp matches 103 if score _damage temp matches 45.. run scoreboard players set _armor temp 1
execute if score _slot temp matches 100 run scoreboard players set _feet temp 1
execute if score _slot temp matches 101 run scoreboard players set _legs temp 1
execute if score _slot temp matches 102 run scoreboard players set _chest temp 1
execute if score _slot temp matches 103 run scoreboard players set _head temp 1