global.coins = 16
global.points = 0
global.gamerounds = 0
global.savecoinplayer = false //Initlaise boolean flag for save coin

if(string_length(global.initialiseplayername) > 0) //Checks if the player name is more than 1 character
{
	global.playername = global.initialiseplayername //Player name is replaced by inputs from player
}
else //If player name does not contain any characters
{
	global.playername = "Guest"; //Player name is replaced by Guest
}

if(global.load_game == true) //If load game flag is true
{
	load_game(); //Load saved game function
	global.load_game = false //Reinitialise load game flag to false
}


