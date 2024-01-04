var gridSquareWidth = 64; 
var gridSquareHeight = 64;
var gridWidth = room_width div gridSquareWidth; // Calculate the number of cells in the x-direction
var gridHeight = room_height div gridSquareHeight; // Calculate the number of cells in the y-direction
var nonIndustry = 0;
var adjacentIndustry = false;
rPoints = 0;
temp = 0;



for (var i = 0; i < gridWidth; i++) {
    for (var j = 0; j < gridHeight; j++) {
		
		var obj = instance_position(i * gridSquareWidth, j * gridSquareHeight, obj_Industrial); //Check if the object at cell (i, j) is obj_Industrial
	    if (obj != noone)
		{
			var checkx = i * gridSquareWidth; // Calculate the x-coordinate of the cell
            var checky = j * gridSquareHeight; // Calculate the y-coordinate of the cell
            
			 // Check for adjacent industries
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Industrial)) {
				adjacentIndustry = true;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Industrial)) {
                adjacentIndustry = true;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Industrial)) {
                adjacentIndustry = true;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Industrial)) {
                adjacentIndustry = true;
            }
			
			obj.points = 1
			rPoints +=1;
			
  
		}
		
		if (adjacentIndustry != true)
		{
			 var obj = instance_position(i * gridSquareWidth, j * gridSquareHeight, obj_Residential); // Check if the object at cell (i, j) is obj_Park
             if (obj != noone) 
		     {
			
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



	
			   rPoints += adjacentResidences; // Accumulate points for all residential objects
		  
			

        }
		
		var obj = instance_position(i * gridSquareWidth, j * gridSquareHeight, obj_Residential); // Check if the object at cell (i, j) is obj_Park
        if (obj != noone) 
		{
			var checkx = i * gridSquareWidth; // Calculate the x-coordinate of the cell
            var checky = j * gridSquareHeight; // Calculate the y-coordinate of the cell
            
            var adjacentParks = 0;
		

            // Check for adjacent parks
            if (position_meeting(checkx + gridSquareWidth, checky, obj_Park)) {
                adjacentParks += 2;
            }
            if (position_meeting(checkx - gridSquareWidth, checky, obj_Park)) {
                adjacentParks += 2;
            }
            if (position_meeting(checkx, checky + gridSquareHeight, obj_Park)) {
                adjacentParks += 2;
            }
            if (position_meeting(checkx, checky - gridSquareHeight, obj_Park)) {
                adjacentParks += 2;
            }
			
			
	
			 rPoints += adjacentParks ; // Accumulate points for all park objects
			
		
		
		
		}
    }
  }  
}

