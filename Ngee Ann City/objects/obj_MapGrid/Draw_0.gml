draw_sprite_stretched(
	spr_Background,
	0,
	x-6,
	y-6,
	12+rowLength*64,
	12+(((MAP_SLOTS-1) div rowLength)+1)*64
);


for (var i = 0; i < MAP_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 64 + 2;
	var yy = y + (i div rowLength) * 64 + 4;
	var hover = (obj_Mouse.gridHover == id) && (obj_Mouse.slotHover == i) 
	draw_sprite(spr_Grid2,hover,xx,yy) 
	if (mapgrid[i] != -1)
	{
		draw_sprite(spr_Road,mapgrid[i],xx,yy);//additional to test
		var alpha = 1.0
		if (obj_Mouse.gridDrag == id) && (obj_Mouse.gridDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
	}
}


// Draw Event - obj_MapGrid
if (!instance_exists(isMenuVisible)) {
    isMenuVisible = false; // or true, depending on your initial state
}

// Draw Event - Drawing the spaced-out menu horizontally
var menuX = x + 20; // Adjust this value based on your desired position
var menuY = y + (((MAP_SLOTS - 1) div rowLength) + 1) * 64 + 20; // Add vertical spacing here

var optionWidth = 120; // Adjust this value for the width of each option
var optionSpacing = 130; // Adjust this value for the spacing between options


// Draw in-game menu
for (var i = 0; i < array_length_1d(options); i++) {
    draw_set_color(c_black);

    if (i == optionIndex) {
        // Highlight the selected option
        draw_set_color(c_green); // Set the highlight color (you can change it)
        draw_text(menuX + i * (optionWidth + optionSpacing), menuY, ">> " + options[i]);
    } else {
        draw_text(menuX + i * (optionWidth + optionSpacing), menuY, options[i]);
    }

    // Reset color to default
    draw_set_color(c_black);
}

// Draw instructions menu below the in-game menu
var instructionsX = x + 20;
var instructionsY = menuY + 40; // Adjust the vertical position based on your desired spacing


draw_set_color(c_black);
draw_text(instructionsX, instructionsY, "Instructions:");
instructionsY += 30;

draw_text(instructionsX, instructionsY, "Left click: Place block");
instructionsX += 250; // Adjust this value for horizontal spacing
draw_text(instructionsX, instructionsY, "Right click: Switch block");

draw_text(instructionsX+720, instructionsY, "Player's Name:");
draw_text(instructionsX+880, instructionsY, string(global.playername));

instructionsY += 40; // Increase vertical spacing between sections
instructionsX = x + 20; // Reset instructionsX to the original value for the next section

draw_text(instructionsX, instructionsY, "Block Colors:");
instructionsY += 30;

// Display block colors and corresponding types horizontally with spacing
var colorTypes = [
    {color: c_blue, type: "Commercial"},
    {color: c_orange, type: "Industrial"},
    {color: c_yellow, type: "Park"},
    {color: c_green, type: "Residential"},
    {color: c_black, type: "Road"}
];

var spacing = 40; // Adjust this value for the spacing between each block color and type

for (var i = 0; i < array_length_1d(colorTypes); i++) {
    draw_set_color(colorTypes[i].color);
    draw_rectangle(instructionsX + i * (100 + spacing), instructionsY, instructionsX + 16 + i * (100 + spacing), instructionsY + 16, false);
    draw_text(instructionsX + 20 + i * (100 + spacing), instructionsY, colorTypes[i].type);
}

// Increase vertical spacing after the color types
instructionsY += 40;


// Step Event - Handling menu navigation and selection (unchanged)
if (keyboard_check_pressed(vk_left)) {
    optionIndex = max(0, optionIndex - 1);
}

if (keyboard_check_pressed(vk_right)) {
    optionIndex = min(array_length_1d(options) - 1, optionIndex + 1);
}


// Step Event - Handling menu selection
if (keyboard_check_pressed(vk_enter) && !isMenuVisible) {
    switch (optionIndex) {
        case 0:
            // Option 1: Start new game
            show_message("Starting a new game...");
            room_goto(rm_Title);
            break;

        case 1:
            // Option 2: Load saved game
            show_message("Loading saved game...");
            remove_highlight_all(); //Remove current highlight
			load_game(); //Load game function
            break;
        case 2:
            // Option 2: Save current game
            show_message("Saving current game...");
			save_game(); //Save game function
			break;
        case 3:
            // Option 3: Display high scores
            show_message("Displaying high scores...");
            room_goto(rm_Highscore);
            break;
		case 4:
			// Option 4: Exit game
            show_message("Exiting the game...");
            game_end();
            break;
    }
}


if (keyboard_check_pressed(vk_enter) && isMenuVisible) {
    // Handling menu selection (unchanged)

}

// Step Event - Toggling menu visibility (unchanged)
if (keyboard_check_pressed(vk_escape)) {
    isMenuVisible = !isMenuVisible;
}