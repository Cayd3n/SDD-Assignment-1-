x = mouse_x;
y = mouse_y;


///@description Place Building
if (image_index == 0) {//if no obstructions (then image_index will be 0)
	//create obstruction and set its sprite to the size of the turret, to stop placing turrets over each other
	//var _o = instance_create_layer(x-64,y-32,"Obstructions",obj_obstruction);
	//_o.sprite_index = spr_obstruction_turret;
    move_snap(64,64);
	var checkForBuildings = check_buildings(x, y);
	if(checkForBuildings == false/*check_buildings(x, y) == false*/) //No buildings found, allow construction
	{
		show_debug_message("No buildings found.");
		if (current_building == 1)
		{
			if(random_buildingA == 0)
			{
				instance_create_layer(x,y,"Buildings",obj_Residential);
			}
			if(random_buildingA == 1)
			{
				instance_create_layer(x,y,"Buildings",obj_Commercial);
			}
			if(random_buildingA == 2)
			{
				instance_create_layer(x,y,"Buildings",obj_Industrial);
			}
			if(random_buildingA == 3)
			{
				instance_create_layer(x,y,"Buildings",obj_Park);
			}
			if(random_buildingA == 4)
			{
				instance_create_layer(x,y,"Buildings",obj_Road);
				//show_debug_message("Road x : " + string(x)); //Show x coordinates of road 
				//show_debug_message("Road y : " + string(y)); //Show y coordinates of road 
			}
		}
		else
		{
			if(random_buildingB == 0)
			{
				instance_create_layer(x,y,"Buildings",obj_Residential);
			}
		
			if(random_buildingB == 1)
			{
				instance_create_layer(x,y,"Buildings",obj_Commercial);
			}
		
		
			if(random_buildingB == 2)
			{
				instance_create_layer(x,y,"Buildings",obj_Industrial);
			}
		
			if(random_buildingB == 3)
			{
				instance_create_layer(x,y,"Buildings",obj_Park);
			}
		
			if(random_buildingB == 4)
			{
				instance_create_layer(x,y,"Buildings",obj_Road);
				//show_debug_message("Road x : " + string(x)); //Show x coordinates of road 
				//show_debug_message("Road y : " + string(y)); //Show y coordinates of road 
			}
		}
		current_building = 1; //Reinitialise building 1 back to mouse
		placed_building1 = false;
		placed_building2 = false;
		global.coins -= 1;
	}
	
}