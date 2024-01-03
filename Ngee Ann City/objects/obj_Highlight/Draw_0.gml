building_array = [obj_Commercial, obj_Industrial, obj_Park, obj_Residential, obj_Road] //Array containing all buildings

var bListLen = array_length(building_array); //Total length of building list
var cGridSize = 64; //Total size for each cell
var xGridWidth = 1216; //Total Grid width of X in pixels
var yGridHeight = 1216; //Total Grid width of Y in pixels

//Function for highlighting all the grid cells
function highlight_all() 
{
	var cGridSize = 64; //Total size for each cell
	var xGridWidth = 1216; //Total Grid width of X in pixels
	var yGridHeight = 1216; //Total Grid width of Y in pixels
	for (var i = 0; i < xGridWidth + 1; i+= cGridSize) 
	{
		for (var j = 0; j < yGridHeight + 1; j += cGridSize)
		{
			layer_sprite_create("Highlight", i, j, spr_Highlight);
		}
	}
	//show_debug_message("Highlight all function, complete.");
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


for (var i = 0; i < xGridWidth + 1; i+= cGridSize) //Loops through the x pixels from 0 to 1216
{ 
    for (var j = 0; j < yGridHeight + 1; j += cGridSize) //Loops through the y pixels from 0 to 1216
	{ 
		for(var z = 0; z < bListLen; z++) //Loops through the building array
		{
			//show_debug_message(string(building_list[z]));
			var building_instance = instance_position(i, j, building_array[z]); //Check for any buildings in the coordinates of x and y
			if (building_instance != noone) //If building is located
			{
				if(i == 0 and j == 0)//Checks if current building is on the top left cell
				{
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
				}
				else if(i == 1216 and j == 0)//Checks if current building is on the top right cell
				{
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
				}
				else if(i == 0 and j == 1216)//Checks if current building is on the bottom left cell
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
				}
				else if(i == 1216 and j == 1216)//Checks if current building is on the bottom right cell
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
				}
				else if(i >= 64 and i <= 1152 and j == 0)//Checks if current building is on the top row
				{
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
				}else if(i >= 64 and i <= 1152 and j == 1216)//Checks if current building is on bottom row
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
				}
				else if(j >= 64 and j <= 1152 and i == 0)//Checks if current building is on the left column
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
				}
				else if(j >= 64 and j <= 1152 and i == 1216)//Checks if current building on the right column
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
				}
				else if(i >= 64 and i <= 1152 and j >= 64 and j <= 1152) //Current building does not fall under the first or last rows and columns
				{
					layer_sprite_create("Highlight", i, j-64, spr_Highlight);//highlight top
					layer_sprite_create("Highlight", i, j+64, spr_Highlight);//highlight bottom
					layer_sprite_create("Highlight", i-64, j, spr_Highlight);//highlight left side
					layer_sprite_create("Highlight", i+64, j, spr_Highlight);//highlight right side
				}	
			} 
		}
    }
}

//If gamerounds = 0, it indicates the start of the game. 
if(global.gamerounds == 0)
{
	highlight_all(); //Highlight all cells on the grid available for construction
}else if (global.gamerounds == 1)
{
	remove_highlight_all();
}

