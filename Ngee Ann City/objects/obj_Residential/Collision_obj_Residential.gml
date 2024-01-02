/// @description Collision Points
var gridSquareWidth = 64; 
var gridSquareHeight = 64;
var gridWidth = room_width div gridSquareWidth; // Calculate the number of cells in the x-direction
var gridHeight = room_height div gridSquareHeight; // Calculate the number of cells in the y-direction
var rPoints = 0;

 var checkx = i * gridSquareWidth; // Calculate the x-coordinate of the cell
 var checky = j * gridSquareHeight; // Calculate the y-coordinate of the cell
            
 var adjacentResidences = 0;
		

// Check for adjacent parks
 if (position_meeting(checkx + gridSquareWidth, checky, obj_Residential)) {
                adjacentResidences += 1;
 }
 if (position_meeting(checkx - gridSquareWidth, checky, obj_Residential)) {
                adjacentResidences += 1;
 }
 if (position_meeting(checkx, checky + gridSquareHeight, obj_Residential)) {
                adjacentResidences += 1;
 }
 if (position_meeting(checkx, checky - gridSquareHeight, obj_Residential)) {
                adjacentResidences += 1;
 }
			   rPoints += adjacentResidences; // Accumulate points for all park objects
		   


