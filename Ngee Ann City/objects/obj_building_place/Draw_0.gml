///@description Draw self
draw_sprite(spr_grid,image_index,x,y);

if (placed_building1 = false) 
{
	random_buildingA = irandom_range(0,4);
	sprite_index = (building_list[random_buildingA])
	placed_building1 = true
}

//Selects the second building and will keep rolling until a different building is chosen.
if (placed_building2 = false)
{
	random_buildingB = irandom_range(0,4)
	while (random_buildingB == random_buildingA)
	{
		random_buildingB = irandom_range(0,4)
	}
    placed_building2 = true;
}



//Cycles to the other building
if mouse_check_button_pressed(mb_right)
{
	if (sprite_index == building_list[random_buildingA])
	{
		sprite_index = (building_list[random_buildingB])
		current_building = 2;
	}
	else
	{
		sprite_index = (building_list[random_buildingA])
		current_building = 1;
	}
}

draw_self()
