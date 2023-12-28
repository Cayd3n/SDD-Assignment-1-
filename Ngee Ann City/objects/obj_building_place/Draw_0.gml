///@description Draw self
draw_sprite(spr_grid,image_index,x,y);

if (placed_building1 = false) 
{
	var random_buildingA = random_range(0,4);
	sprite_index = (building_list[random_buildingA])
	placed_building1 = true
}

//Selects the second building and will keep rolling until a different building is chosen.
if (placed_building2 = false)
{
	var random_buildingB = random_range(0,4)
	while (random_buildingB == random_buildingA)
	{
		random_buildingB = random_range(0,4)
	}
    placed_building2 = true;
}


if (mouse_check_button(m_scroll_up))
{

}
draw_self()
