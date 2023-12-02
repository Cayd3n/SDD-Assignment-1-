/// @description Insert description here
// You can write your code in this editor

//Moving road object by 5 in Y coordinates, moving upwards
y = y - 50

//Prevent object from moving outside the grid or map
if x < 0 {
    x = 0; // Prevent object from moving beyond the left boundary
}
if x > room_width {
    x = room_width; // Prevent object from moving beyond the right boundary
}
if y < 0 {
    y = 0; // Prevent object from moving beyond the top boundary
}
if y > room_height {
    y = room_height; // Prevent object from moving beyond the bottom boundary
}

