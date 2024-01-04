/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white); // Set the color to white


// Display the title at the top
draw_set_color(c_red); // Set the font color to red
draw_text(room_width / 2, 50, "High Scores");

// Reset the font color to white for the high scores
draw_set_color(c_white); // Reset the font color to white

var yPos = room_height / 2 - (ds_list_size(highScores) * 30); // Initial y position for displaying scores
var lineHeight = 50; // Line height for each score

for (var i = 0; i < ds_list_size(highScores); i++) {
    var scoreText = "High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i));
    draw_text(room_width / 2, yPos + i * lineHeight, scoreText);
}

if (variable_global_exists("points")) {
    draw_text(room_width / 2, yPos + ds_list_size(highScores) * lineHeight + 10, "Your Score: " + string(global.points));
}



draw_text(room_width / 2, yPos + ds_list_size(highScores) * lineHeight + 30, "Press Z to go back to Main Menu");


// Display the loaded high scores in the output window
	//for (var i = 0; i < ds_list_size(highScores); i++) {
	//    show_debug_message("High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i)));
	//}