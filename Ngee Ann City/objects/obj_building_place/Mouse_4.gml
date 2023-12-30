///@description Place Building
if (image_index == 0) {//if no obstructions (then image_index will be 0)
	//create obstruction and set its sprite to the size of the turret, to stop placing turrets over each other
	var _o = instance_create_layer(x-32,y-32,"Obstructions",obj_obstruction);
	_o.sprite_index = spr_obstruction_turret;
    
	if (current_building == 1)
	{
		if(random_buildingA == 0)
		{
			instance_create_layer(x,y,"Obstructions",obj_Residential);
		}
		if(random_buildingA == 1)
		{
			instance_create_layer(x,y,"Obstructions",obj_Commerical);
		}
		if(random_buildingA == 2)
		{
			instance_create_layer(x,y,"Obstructions",obj_Industrial);
		}
		if(random_buildingA == 3)
		{
			instance_create_layer(x,y,"Obstructions",obj_Park);
		}
		if(random_buildingA == 4)
		{
			instance_create_layer(x,y,"Obstructions",obj_Road);
		}
	}
	else
	{
		if(random_buildingB == 0)
		{
			instance_create_layer(x,y,"Obstructions",obj_Residential);
		}
		
		if(random_buildingB == 1)
		{
			instance_create_layer(x,y,"Obstructions",obj_Commerical);
		}
		
		
		if(random_buildingB == 2)
		{
			instance_create_layer(x,y,"Obstructions",obj_Industrial);
		}
		
	    if(random_buildingB == 3)
		{
			instance_create_layer(x,y,"Obstructions",obj_Park);
		}
		
	    if(random_buildingB == 4)
		{
			instance_create_layer(x,y,"Obstructions",obj_Road);
		}
	}
	placed_building1 = false;
	placed_building2 = false;
}