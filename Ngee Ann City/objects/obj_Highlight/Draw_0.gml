/// @description Insert description here
// You can write your code in this editor


var gridWidth = 1280; // Replace with actual grid width
var gridHeight = 1280; // Replace with actual grid height

for (var i = 0; i < gridWidth; i++) {
    for (var j = 0; j < gridHeight; j++) {
        if (position_empty(i, j)) {
            // Highlight the empty cell
            draw_set_color(c_white); // Set the color to white for an empty cell
        }
    }
}


