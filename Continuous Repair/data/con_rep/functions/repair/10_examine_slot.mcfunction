
# Check for damage value
execute if data storage con_rep:data inventory[0].tag.Damage run function con_rep:repair/11_check_damage


# Continue to next slot, if any
data remove storage con_rep:data inventory[0]
execute if data storage con_rep:data inventory[0] run function con_rep:repair/10_examine_slot