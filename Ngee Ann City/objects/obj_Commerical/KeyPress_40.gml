/// @description Insert description here
// You can write your code in this editor

// each grid cell is 20 units in size
var gridSize = 20;

y = y + 50

//Prevent object from moving outside the grid or map
if x < 0 {
    x = 0; 
}

if x > (room_width - gridSize) {
    x = room_width - gridSize; //
}

if y < 0 {
    y = 0; // Prevent object from moving beyond the top boundary
}

if y > (room_height - gridSize) {
    y = room_height - gridSize; 
}