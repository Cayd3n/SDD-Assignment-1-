// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

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


function save_game()
{
	var save_building = []; //Array to store building details
	var save_game_info = []; //Array to store game information
	
	//Data of game
	var struct_save = 
	{
		gamecoins: global.coins,
		gamepoints: global.points,
		gamerounds: global.gamerounds
	};	
	array_push(save_game_info, struct_save); //Push to save_array
	
	with(obj_Commercial)
	{	
		//Data of building
		var struct_save = 
		{
			x: x,
			y: y,
			object: object_get_name(object_index)
		};
		
		array_push(save_building, struct_save); //Push to save_array
		
	}
	with(obj_Industrial)
	{
		//Data of building
		var struct_save = 
		{
			x: x,
			y: y,
			object: object_get_name(object_index)
		};
		
		array_push(save_building, struct_save); //Push to save_array
		
	}
	with(obj_Park)
	{
		//Data of building
		var struct_save = 
		{
			x: x,
			y: y,
			object: object_get_name(object_index)
		};
		
		array_push(save_building, struct_save); //Push to save_array
		
	}
	with(obj_Residential)
	{
		//Data of building
		var struct_save = 
		{
			x: x,
			y: y,
			object: object_get_name(object_index)
		};
		
		array_push(save_building, struct_save); //Push to save_array
		
	}
	with(obj_Road)
	{
		//Data of building
		var struct_save = 
		{
			x: x,
			y: y,
			object: object_get_name(object_index)
		};
		
		array_push(save_building, struct_save); //Push to save_array
		
	}
	
	var json_string_gameinfo = json_stringify(save_game_info)
	var json_string_building = json_stringify(save_building)
	
	var save_file = file_text_open_write("NgeeAnnCityGameInfo.txt");
	file_text_write_string(save_file, json_string_gameinfo);
	file_text_close(save_file);
	
	var save_file2 = file_text_open_write("NgeeAnnCityBuildingSave.txt");
	file_text_write_string(save_file2, json_string_building);
	file_text_close(save_file2);
}

function load_game()
{
	if(file_exists("NgeeAnnCityGameInfo.txt"))
	{
		var load_file = file_text_open_read("NgeeAnnCityGameInfo.txt");
		var json_string = file_text_read_string(load_file);
		var load_array = json_parse(json_string);
		
		//For loop to obtain the game values from saved file
		for(var i = 0; i < array_length(load_array); i++)
		{
			var struct_load = load_array[i];
			global.coins = struct_load.gamecoins;
			global.points = struct_load.gamepoints;
			global.gamerounds = struct_load.gamerounds;
		}
		
		file_text_close(load_file);
	}
	
	if(file_exists("NgeeAnnCityBuildingSave.txt"))
	{
		var load_file = file_text_open_read("NgeeAnnCityBuildingSave.txt");
		var json_string = file_text_read_string(load_file);
		var load_array = json_parse(json_string);
		
		//Removal of current buildings 
		instance_destroy(obj_Commercial);
		instance_destroy(obj_Industrial);
		instance_destroy(obj_Park);
		instance_destroy(obj_Residential);
		instance_destroy(obj_Road);
		
		//For loop to construct the different buildings on the saved locations
		for(var i = 0; i < array_length(load_array); i++)
		{
			var struct_load = load_array[i];
			instance_create_layer(struct_load.x, struct_load.y, "Buildings", asset_get_index(struct_load.object));
		}
		
		file_text_close(load_file);
	}
}
