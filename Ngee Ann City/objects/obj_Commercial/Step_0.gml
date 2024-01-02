var gridSquareWidth = 64; 
var gridSquareHeight = 64;
var gridWidth = room_width div gridSquareWidth; // Calculate the number of cells in the x-direction
var gridHeight = room_height div gridSquareHeight; // Calculate the number of cells in the y-direction
var commercialPoints = 0;




for (var j = 0; j < gridWidth; j++) {
    for (var z = 0; z < gridHeight; z++) {
        var obj = instance_position(j * gridSquareWidth, z * gridSquareHeight, obj_Commercial); // Check if the object at cell (i, j) is obj_Park
        if (obj != noone) {
			
		    var checkx = j * gridSquareWidth; // Calculate the x-coordinate of the cell
            var checky = z * gridSquareHeight; // Calculate the y-coordinate of the cell
            
            var adjacentCommercial = 0;
		

            // Check for adjacent parks
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Commercial)) {
                adjacentCommercial += 1;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Commercial)) {
                adjacentCommercial += 1;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Commercial)) {
                adjacentCommercial += 1;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Commercial)) {
                adjacentCommercial += 1;
            }



           obj.points = adjacentCommercial; // Set points for the current park object
           commercialPoints += adjacentCommercial; // Accumulate points for all park objects
			
			

        }
    }
}
//global.points += pPoints;
show_debug_message("Commercial Points: " + string(commercialPoints));