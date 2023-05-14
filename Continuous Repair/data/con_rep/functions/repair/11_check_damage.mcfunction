
execute store result score _damage temp run data get storage con_rep:data inventory[0].tag.Damage

execute if score _damage temp matches 1.. run function con_rep:repair/20_check_slot_index