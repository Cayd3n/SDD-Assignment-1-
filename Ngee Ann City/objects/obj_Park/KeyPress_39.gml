/// @description Insert description here
// You can write your code in this editor
//gridSize = 50;
//if (keyboard_check(vk_right)) {
//    // Move the object to the right by increasing its x-coordinate by 50 units
//    x += 50;

//    // Adjust the position to align with the grid
//    x = clamp(x, 0, room_width - gridSize);

//    // Ensure the object stays within the vertical boundaries
//    if (y < 0) {
//        y = 0; // Prevent object from moving beyond the top boundary
//    }

//    if (y > (room_height - gridSize)) {
//        y = room_height - gridSize;
//    }
//}


var gridSquareWidth = 64; // Replace with the actual width of each grid square
var gridSquareHeight = 64; // Replace with the actual height of each grid square

if (keyboard_check(vk_right)) {
    // Check for collision with other objects to the right
    if (!place_meeting(x + gridSquareWidth, y, obj_Road) && !place_meeting(x + gridSquareWidth, y, obj_Park) && !place_meeting(x + gridSquareWidth, y, obj_Residential) && !place_meeting(x + gridSquareWidth, y, obj_Industrial) && !place_meeting(x + gridSquareWidth, y, obj_Commerical)) {
        // Move the object to the right by increasing its x-coordinate by the grid square width
        x += gridSquareWidth;
    }

    // Adjust the position to align with the grid
    x = clamp(x, 0, room_width - gridSquareWidth);

    // Ensure the object stays within the vertical boundaries
    if (y < 0) {
        y = 0; // Prevent object from moving beyond the top boundary
    }

    if (y > (room_height - gridSquareHeight)) {
        y = room_height - gridSquareHeight;
    }
}

