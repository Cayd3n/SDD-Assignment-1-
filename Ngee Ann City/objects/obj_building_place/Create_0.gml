///@description Initialise sprite
image_speed = 0;
image_index = 0;
placed_building1 = false;
placed_building2 = false;
random_buildingA = 1;
random_buildingB = 2;
current_building = 1;
building_list = [spr_ResidentialBlk, spr_Commercial, spr_IndustrialBlk, spr_Park, spr_Road]
randomize()


//Function to check buildings
function check_buildings(xBuilding, yBuilding)
{
	building_array = [obj_Commercial, obj_Industrial, obj_Park, obj_Residential, obj_Road] //Array containing all buildings
	var bListLen = array_length(building_array); //Total length of building list
	
	for(var z = 0; z < bListLen; z++) //Loops through the building array
	{
		//show_debug_message(string(building_list[z]));
		var building_instance = instance_position(xBuilding, yBuilding, building_array[z]); //Check for any buildings in the coordinates of x and y
		if (building_instance == noone) //If building is not located
		{
			show_debug_message("No building found at position (" + string(xBuilding) + ", " + string(yBuilding) + ")");
			return false;
		} 
		else //If building is located
		{
			show_debug_message("Building found at position (" + string(xBuilding) + ", " + string(yBuilding) + ") Unable to place any buildings.");
			return true;
		}
	}
}

//Function to remove all highlights 
function remove_highlight_all()
{
	var a = layer_get_all_elements("Highlight"); //Variable a to store all elements on highlight layer
	for (var i = 0; i < array_length(a); i++;) //Loop through all elements from the length of variable a
	{
	    if layer_get_element_type(a[i]) == layerelementtype_sprite //If element type is a sprite
	    {
	        layer_sprite_destroy(a[i]) //Removal of element a from layer
	    }
	}
	//show_debug_message("Still running");
}