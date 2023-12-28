/// @description Insert description here
// You can write your code in this editor


var gridSquareWidth = 64; // Replace with the actual width of each grid square
var gridSquareHeight = 96; // Replace with the actual height of each grid square


if (keyboard_check(vk_up)) {
	
	// Check for collision with other objects above it
    if (!place_meeting(x, y - gridSquareHeight, obj_Road) && !place_meeting(x, y - gridSquareHeight, obj_Park) && !place_meeting(x, y - gridSquareHeight, obj_Commerical) && !place_meeting(x, y - gridSquareHeight, obj_Residential) && !place_meeting(x, y - gridSquareHeight, obj_Industrial)) {
        // Move the object up by decreasing its y-coordinate by the grid square height
         y -= gridSquareHeight;
    
	}

    // Adjust the position to align with the grid
    y = clamp(y, 0, room_height - gridSquareHeight);

    // Ensure the object stays within the horizontal boundaries
    if (x < 0) {
        x = 0; // Prevent object from moving beyond the left boundary
    }

    if (x > (room_width - gridSquareWidth)) {
        x = room_width - gridSquareWidth;
    }
}
