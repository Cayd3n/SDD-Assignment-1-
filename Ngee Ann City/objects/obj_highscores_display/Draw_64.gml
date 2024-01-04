/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white); // Set the color to white


var yPos = room_height / 2 - (ds_list_size(highScores) * 30); // Initial y position for displaying scores
var lineHeight = 50; // Line height for each score

for (var i = 0; i < ds_list_size(highScores); i++) {
    var scoreText = "High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i));
    draw_text(room_width / 2, yPos + i * lineHeight, scoreText);
}

draw_text(room_width / 2, yPos + ds_list_size(highScores) * lineHeight + 20, "Press Z to go back to Main Menu");


// Display the loaded high scores in the output window
	//for (var i = 0; i < ds_list_size(highScores); i++) {
	//    show_debug_message("High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i)));
	//}