// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_top_score_list(){
	var _file = working_directory + "highscore.txt";
	var _handle = file_text_open_append(_file); // Open the file in append mode to add new entries without overwriting existing content

	var _username = get_string_async("Enter your username:", "Player1"); // Prompt the user to enter their username
	file_text_write_string(_handle, _username + ":" + string(global.points) + "\n"); // Save the username and points to the file on a new line
	file_text_close(_handle);
	
}

/*
How it would be loaded from the list:
var _file = working_directory + "highscore.txt";
var _handle = file_text_open_read(_file);

if (_handle != -1) {
    while (!file_text_eof(_handle)) {
        var _line = file_text_readln(_handle);
        var _data = string_split(_line, ":");
        var _username = _data[| 0];
        var _points = real(_data[| 1]);
        
        // Do something with the username and points, such as adding them to a list or displaying them
        show_debug_message("Username: " + _username + ", Points: " + string(_points));
    }
    
    file_text_close(_handle);
} else {
    show_debug_message("Failed to open file for reading.");
}
*/