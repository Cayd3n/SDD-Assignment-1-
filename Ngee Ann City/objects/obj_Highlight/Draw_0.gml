building_array = [obj_Commercial, obj_Industrial, obj_Park, obj_Residential, obj_Road] //Array containing all buildings

var bListLen = array_length(building_array); //Total length of building list
var firstRound = true; //Variable for the first round of game set to true
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
	show_debug_message("Highlight all function, complete.");
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
	//var cGridSize = 64; //Total size for each cell
	//var xGridWidth = 1216; //Total Grid width of X in pixels
	//var yGridHeight = 1216; //Total Grid width of Y in pixels
	//for (var i = 0; i < xGridWidth + 1; i+= cGridSize) 
	//{
	//	for (var j = 0; j < yGridHeight + 1; j += cGridSize)
	//	{
	//		var lay_id = layer_get_id("Highlight");
	//		var spriteID = layer_sprite_get_id("Highlight", spr_Highlight);
	//		layer_sprite_destroy(lay_id, spriteID);
	//		show_debug_message("remove sprite at X: " + string(i) + "Y: " + string(j))
	//		//if layer_sprite_exists(lay_id, spr_Highlight)
	//		//{
	//		//    layer_sprite_destroy(lay_id);
	//		//}
	//	}
	//}
}

//Function for highlighting grid cells without buildings
function highlight_grid(xGridCell, yGridCell) 
{
	//layer_sprite_create("Highlight", xGridCell, yGridCell, spr_Highlight);
	//show_debug_message("No building found at position (" + string(i) + ", " + string(j) + ")");
	//return draw_sprite(spr_Highlight, 0, xGridCell, yGridCell);
}

//for (var i = 0; i < xGridWidth + 1; i+= cGridSize) //Loops through the x pixels from 0 to 1216
//{ 
//    for (var j = 0; j < yGridHeight + 1; j += cGridSize) //Loops through the y pixels from 0 to 1216
//	{ 
//		for(var z = 0; z < bListLen; z++) //Loops through the building array
//		{
//			//show_debug_message(string(building_list[z]));
//			var building_instance = instance_position(i, j, building_array[z]); //Check for any buildings in the coordinates of x and y
//			if (building_instance == noone) //If building is not located
//			{
//			    //show_debug_message("No building found at position (" + string(i) + ", " + string(j) + ")");
//				//show_debug_message("Highlight cell at position (" + string(i) + ", " + string(j) + ")")
//				//draw_sprite(spr_Highlight, 0, i, j);
//			} 
//			else //If building is located
//			{
//				firstRound = false;
//				//highlight_grid(i, j);
//				//show_debug_message("Building found at position (" + string(i) + ", " + string(j) + ")");
//			}
//		}
//    }
//}

//If gamerounds = 0, it indicates the start of the game. 
if(global.gamerounds == 0)
{
	highlight_all(); //Highlight all cells on the grid available for construction
}else
{
	remove_highlight_all();
}

//show_debug_message("Searched all grid complete")
//if(firstRound == true) //If first round of game is true, run highlight all function.
//{
//	//show_debug_message("First round with zero buildings placed.")
//	highlight_all();
//}

