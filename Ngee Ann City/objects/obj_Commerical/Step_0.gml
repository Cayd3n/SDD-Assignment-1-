var gameScore = 0;
var coinCount = 0;

function CheckCommercials()
{
    var gridSize = 64;
    var spriteWidth = 64; // Assuming each sprite has a width of 32 pixels
    var coinValue = 1; // The number of coins generated per residential adjacent to a commercial

    // Loop through each row
    for (var row = 0; row < gridSize; row++)
    {
        // Loop through each column
        for (var col = 0; col < gridSize; col++)
        {
            // Get the current sprite index
            var currentSprite = tilemap_get(tilemap, col, row); // Replace 'tilemap' with your actual tilemap variable name

            if (currentSprite == "spr_CommercialBlk") // Assuming "C" represents a Commercial sprite
            {
                // Check for adjacent sprites (up, down, left, right)
                CheckAdjacent(col, row - 1, coinValue); // Check up
                CheckAdjacent(col, row + 1, coinValue); // Check down
                CheckAdjacent(col - 1, row, coinValue); // Check left
                CheckAdjacent(col + 1, row, coinValue); // Check right
            }
        }
    }
}

function CheckAdjacent(col, row, coinValue)
{
    // Check if the coordinate is within the grid boundaries
    if (col >= 0 && col < gridSize && row >= 0 && row < gridSize)
    {
        // Get the sprite at the specified coordinate
        var adjacentSprite = tilemap_get(tilemap, col, row);

        // Check if the adjacent sprite is residential
        if (adjacentSprite == "spr_ResidentialBlk") // Assuming "R" represents a Residential sprite
        {
            // Increment the coin count
            coinCount += coinValue;
        }
        // Check if the adjacent sprite is another commercial
        else if (adjacentSprite == "spr_CommercialBlk") // Assuming "C" represents a Commercial sprite
        {
            // Increment the game score
            gameScore += 1;
        }
    }
}
