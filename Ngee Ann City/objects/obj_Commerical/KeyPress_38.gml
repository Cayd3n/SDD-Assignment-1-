/// @description Insert description here
// You can write your code in this editor

// each grid cell is 20 units in size
var gridSize = 20;

y = y - 50;


y = clamp(y, 0, room_height);

// Ensure the object stays within the horizontal boundaries
if x < 0 {
    x = 0; 
}
if x > room_width - gridSize {
    x = room_width - gridSize; 
}

// Ensure the object stays within the vertical boundaries
if y < 0 {
    y = 0; 
}
if y > room_height - gridSize {
    y = room_height - gridSize; 
}