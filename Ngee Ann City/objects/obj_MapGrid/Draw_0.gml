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
var optionSpacing = 150; // Adjust this value for the spacing between options

for (var i = 0; i < array_length_1d(options); i++) {
    draw_set_color(c_white);

    if (i == optionIndex) {
        // Highlight the selected option
        draw_set_color(c_yellow); // Set the highlight color (you can change it)
        draw_text(menuX + i * (optionWidth + optionSpacing), menuY, ">> " + options[i]);
    } else {
        draw_text(menuX + i * (optionWidth + optionSpacing), menuY, options[i]);
    }

    // Reset color to default
    draw_set_color(c_white);
}

// Step Event - Handling menu navigation
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
            // Add your code to start a new game here
            break;

        case 1:
            // Option 2: Load saved game
            show_message("Loading saved game...");
            remove_highlight_all();
			load_game();
            break;

        case 2:
            // Option 3: Display high scores
            show_message("Displaying high scores...");
            // Add your code to display high scores here
            break;

        case 3:
            // Option 4: Exit game
            show_message("Exiting the game...");
            game_end();
            break;
    }
}



// Step Event - Toggling menu visibility
if (keyboard_check_pressed(vk_escape)) {
    isMenuVisible = !isMenuVisible;
}

