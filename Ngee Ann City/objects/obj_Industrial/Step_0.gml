var gridSquareWidth = 64; 
var gridSquareHeight = 64;
var gridWidth = room_width div gridSquareWidth; // Calculate the number of cells in the x-direction
var gridHeight = room_height div gridSquareHeight; // Calculate the number of cells in the y-direction
var industrialPoints = 0;
var coinCount = 0


for (var i = 0; i < gridWidth; i++) {
    for (var j = 0; j < gridHeight; j++) {
        var obj = instance_position(i * gridSquareWidth, j * gridSquareHeight, obj_Park); // Check if the object at cell (i, j) is obj_Park
        if (obj != noone) {
			
		    var checkx = i * gridSquareWidth; // Calculate the x-coordinate of the cell
            var checky = j * gridSquareHeight; // Calculate the y-coordinate of the cell
            
            var adjacentResidential = 0;
			var adjacentIndustrial = 0;


			// Check for adjacent parks
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Industrial)) {
                adjacentIndustrial += 1;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Industrial)) {
                adjacentIndustrial += 1;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Industrial)) {
                adjacentIndustrial += 1;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Industrial)) {
                adjacentIndustrial += 1;
            }

		   obj.points += adjacentIndustrial
		   industrialPoints += adjacentIndustrial
		   
		   // Check for adjacent residential and generate coins
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Residential)) {
                coinCount += 1;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Residential)) {
                coinCount += 1;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Residential)) {
                coinCount += 1;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Residential)) {
                coinCount += 1;
            }
			

        }
    }
}