///Check for identical road sprites

var cRoads = 0; //variable for connected roads
var gridSize = 64; //variable for each gridsize cell
var xPixels = 1216; //variable for total x 
var yPixels = 1216; //variable for total y

//This nested for loop checks for identical road sprites in the row.
for (var i = 0; i < xPixels + 1; i += gridSize) //Loops through the x pixels from 0 to 1216
{
	for(var z = 0; z < yPixels + 1; z += gridSize) //Loops through the y pixels from 0 to 1216
	{
		if (position_meeting(i, z, obj_Road))
		{
			//show_debug_message("Found Road on X: "+ string(i) + " Y: " + string(z));
			//show_debug_message("Road pts: " + string(cRoads));
			//(i >= 64 or i <= 1152)
			if(i == 0) //Checks if the current road sprite has any cells on the right
			{
				//show_debug_message("Road found on left");
				var rCell = i + 64;
				if(position_meeting(rCell, z, obj_Road)) //Checks for additional roads found on the right
				{
					//show_debug_message("Connected Road on right.");
					cRoads += 1;
				}
			}
			else if(i == 1216) //Checks if the current road sprite has any cells on the left
			{
				//show_debug_message("Road found on right");
				var lCell = i - 64;
				if(position_meeting(lCell, z, obj_Road)) //Check for additional roads found on the left
				{
					//show_debug_message("Connected Road on left.");
					cRoads += 1;
				}
			}
			else if (i >= 64 or i <= 1152) //Checks if the current road sprite has any cells on the left & right
			{
				var lCell = i - 64;
				var rCell = i + 64;
				if(position_meeting(lCell, z, obj_Road)) //Check for additional roads found on the left
				{
					//show_debug_message("Connected Road on left.");
					cRoads += 1;
				}else if(position_meeting(rCell, z, obj_Road)) //Checks for additional roads found on the right
				{
					//show_debug_message("Connected Road on right.");
					cRoads += 1;
				}
			}
		}
	}
}
//global.points += cRoads;
show_debug_message("Road Points: " + string(cRoads));



/*
function CheckRoads()
{
	
}
CheckRoads();
*/



//show_debug_message("Testing Road points: " + roadPts);



