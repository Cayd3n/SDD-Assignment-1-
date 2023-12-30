///Check for identical road sprites

//This function checks for identical road sprites in the row.



var cRoads = 0; //variable for connected roads
var gridSize = 64; //variable for each gridsize cell
var xPixels = 1216; //variable for total x 
var yPixels = 1216; //variable for total y


for (var i = 0; i < xPixels; i += gridSize) //Loops through the x pixels from 0 to 1216
{
	for(var z = 0; z < yPixels; z += gridSize) //Loops through the y pixels from 0 to 1216
	{
		if (position_meeting(i, z, obj_Road))
		{
			//show_debug_message("Found Road on X: "+ string(i) + " Y: " + string(z));
			//show_debug_message("Road pts: " + string(cRoads));
			if (i >= 64 or i <= 1152) //Checks if the current road sprite has any cells on the left & right
			{
				var lCell = i - 64;
				var rCell = i + 64;
				if(position_meeting(lCell, z, obj_Road)) //Check for additional roads found on the left
				{
					show_debug_message("Connected Road on left.");
					cRoads += 1;
				}else if(position_meeting(rCell, z, obj_Road)) //Checks for additional roads found on the right
				{
					show_debug_message("Connected Road on right.");
					cRoads += 1;
				}
				show_debug_message("Road Points: " + string(cRoads));
			}
		}
	}
}

/*
for(var a = i; a > 0; a -= 64) //Checks for any roads on the left
{
	for(var b = i; b > 1216; b += 64) //Checks for any roads on the right
	{
		if (position_meeting(a, z, obj_Road)) //Checks for additional road on the left of current road in the same row
		{
			show_debug_message("Found left Road on X: "+ string(a) + " Y: " + string(z));
			cRoads += 1;
			show_debug_message(string(cRoads));
		}else if(position_meeting(b, z, obj_Road)) //Checks for additional road on the right of current road in the same row
		{
			show_debug_message("Found right Road on X: "+ string(b) + " Y: " + string(z));
			cRoads += 1;
			show_debug_message(string(cRoads));
		}
	}
}
*/


/*
function CheckRoads()
{
	
}
CheckRoads();
*/



//show_debug_message("Testing Road points: " + roadPts);



