if (string_length(playername)<limit) //Checks if current message is less than 20 characters
{
	playername = keyboard_string; //Capture key inputs from player
	show_debug_message(string_length(playername));
}
else
{
	keyboard_string = playername; //Prevents player from entering more inputs
}

//Global variable to initialise player name from message
global.initialiseplayername = playername;





