// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_score_load(){
	/// score_load
	var highScores = ds_list_create(); // Create a list to store high scores

	// Load the high scores from the file
	if (file_exists("highscores.txt")) {
	    var file = file_text_open_read("highscores.txt");
	    while (!file_text_eof(file)) {
	        var highscore = file_text_read_real(file);
	        ds_list_add(highScores, highscore);
	    }
	    file_text_close(file);
	}

	return highScores; // Return the list of loaded high scores

}

function scr_score_save(){
	/// scr_score_save
	var highScores = argument0; // The list of high scores to be saved
	var currentScore = argument1; // The current score to be saved

	// Add the current score to the list
	ds_list_add(highScores, currentScore);

	// Sort the list in descending order
	ds_list_sort(highScores, false);

	// Remove duplicate scores
	var i = 0;
	while (i < ds_list_size(highScores) - 1) {
	    if (ds_list_find_value(highScores, i) == ds_list_find_value(highScores, i + 1)) {
	        ds_list_delete(highScores, i + 1);
	    } else {
	        i++;
	    }
	}

	// If the list has more than 10 scores, remove the lowest scores
	while (ds_list_size(highScores) > 10) {
	    ds_list_delete(highScores, 10);
	}

	// Save the high scores to a file
	var file = file_text_open_write("highscores.txt");
	for (var j = 0; j < ds_list_size(highScores); j++) {
	    file_text_write_real(file, ds_list_find_value(highScores, j));
	    file_text_writeln(file);
	}
	file_text_close(file);
}





















//function scr_top_score_list(){
//    var _file = working_directory + "highscore.txt";
//    var _handle = file_text_open_append(_file); // Open the file in append mode to add new entries without overwriting existing content

//    var _username = get_string_async("Enter your username:", "Player1"); // Prompt the user to enter their username
//    var _points = string(global.points); // Convert points to a string
//    var _entry = _username + ":" + _points + "\n"; // Concatenate username, colon, and points
//    file_text_write_string(_handle, _entry); // Save the username and points to the file on a new line
//    file_text_close(_handle);
//}

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