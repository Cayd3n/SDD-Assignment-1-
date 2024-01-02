/// @description Insert description here
// You can write your code in this editor


//var gridSquareWidth = 64; 
//var gridSquareHeight =64;







//// Step Event of the park building object
//var adjacentParks = 0;

//// Check for adjacent parks
//if (place_meeting(x + gridSquareWidth, y, obj_Park)) {
//    adjacentParks += 1;
//}
//if (place_meeting(x - gridSquareWidth, y, obj_Park)) {
//    adjacentParks += 1;
//}
//if (place_meeting(x, y + gridSquareHeight, obj_Park)) {
//    adjacentParks += 1;
//}
//if (place_meeting(x, y - gridSquareHeight, obj_Park)) {
//    adjacentParks += 1;
//}

//points = adjacentParks; // Set points to the number of adjacent parks

//global.points = points; // Update global points

var gridSquareWidth = 64; 
var gridSquareHeight = 64;
var gridWidth = room_width div gridSquareWidth; // Calculate the number of cells in the x-direction
var gridHeight = room_height div gridSquareHeight; // Calculate the number of cells in the y-direction
var pPoints = 0;




for (var i = 0; i < gridWidth; i++) {
    for (var j = 0; j < gridHeight; j++) {
        var obj = instance_position(i * gridSquareWidth, j * gridSquareHeight, obj_Park); // Check if the object at cell (i, j) is obj_Park
        if (obj != noone) {
			
		    var checkx = i * gridSquareWidth; // Calculate the x-coordinate of the cell
            var checky = j * gridSquareHeight; // Calculate the y-coordinate of the cell
            
            var adjacentParks = 0;
		

            // Check for adjacent parks
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Park)) {
                adjacentParks += 1;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Park)) {
                adjacentParks += 1;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Park)) {
                adjacentParks += 1;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Park)) {
                adjacentParks += 1;
            }



           obj.points = adjacentParks; // Set points for the current park object
           pPoints += adjacentParks; // Accumulate points for all park objects
			
			

        }
    }
}
//global.points += pPoints;
show_debug_message("Park Points: " + string(pPoints));

