move_snap(64,64);


/// Check for identical road sprites

// This function checks for identical sprites in the specified row.

var gameScore = 0;

function CheckRoads()
{
	var gridSize = 64;
	var spriteWidth = 64; // Assuming each sprite has a width of 32 pixels
	

	// Loop through each row
	for (var row = 0; row < gridSize; row++)
	{
	    // Loop through each column
	    for (var col = 0; col < gridSize; col++)
	    {
	        // Get the current sprite index
	        var currentSprite = tilemap_get(tilemap, col, row); // Replace 'tilemap' with your actual tilemap variable name

	        // Check if the current sprite matches the right neighbor
	        if (col < gridSize - 1 && currentSprite == tilemap_get(tilemap, col + 1, row))
	        {
	            gameScore += 1;
	        }
	    }
	}
}


