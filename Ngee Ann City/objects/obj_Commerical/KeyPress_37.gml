/// @description Insert description here
// You can write your code in this editor


// each grid cell is 20 units in size
var gridSize = 20;

// Move the object to the left by reducing its x-coordinate by 50 units
x = x - 50;

// Adjust the position to align with the grid
x = clamp(x, 0, room_width - gridSize);

// Ensure the object stays within the horizontal boundaries
if x > (room_width - gridSize) {
    x = room_width - gridSize; 
}

// Ensure the object stays within the vertical boundaries
if y < 0 {
    y = 0;
}

if y > (room_height - gridSize) {
    y = room_height - gridSize;
}