building_array = [obj_Commerical, obj_Industrial, obj_Park, obj_Residential, obj_Road]
var bListLen = array_length(building_array); //Total length of building list

var cGridSize = 64; //Total size for each cell
var xGridWidth = 1216; //Total Grid width of X in pixels
var yGridHeight = 1216; //Total Grid width of Y in pixels


for (var i = 0; i < xGridWidth + 1; i+= cGridSize) { //Loops through the x pixels from 0 to 1216
    for (var j = 0; j < yGridHeight + 1; j += cGridSize) { //Loops through the y pixels from 0 to 1216
		for(var z = 0; z < bListLen; z++) //Loops through the building array
		{
			//show_debug_message(string(building_list[z]));
			var building_instance = instance_position(i, j, building_array[z]); //Check for any buildings in the coordinates of x and y
			if (building_instance == noone) //If building is not located
			{
			    //show_debug_message("No building found at position (" + string(i) + ", " + string(j) + ")");
				draw_sprite(spr_Highlight, 0, i, j);
			} 
			else //If building is not located
			{
				//show_debug_message("Building found at position (" + string(i) + ", " + string(j) + ")");
			}
		}

    }
}

