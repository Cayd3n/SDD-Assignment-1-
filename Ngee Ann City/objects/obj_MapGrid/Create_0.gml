#macro MAP_SLOTS 400
rowLength = 20;
mapgrid = array_create(MAP_SLOTS, -1);


// Create Event - obj_MapGrid
isMenuVisible = false; // or true, depending on your initial state

optionIndex = 0; // Current selected option
options = ["Start New Game", "Load Saved Game", "Display High Scores", "Exit Game"]; // Array of menu options




