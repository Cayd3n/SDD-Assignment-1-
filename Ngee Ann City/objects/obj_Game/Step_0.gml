/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Points: " + string(global.points));

//if (global.coins == 0)
//{
//	var _username = get_string_async("Enter your username:", "Player1");
//    highscore_add(_username, global.points);
//    global.points = 0;
//    room_goto(rm_Title);
//}

if (global.coins == 0)
{
	// Test the save_highscore function
	var username = get_string("Enter your username:",""); // Get the username from the user
	var highscore = obj_Score.points;
	scr_save_highscore(username, highscore);
	

	// Test the load_highscore function
	room_goto(rm_Highscore);


	//// Add existing high scores to the list (assuming you have them stored somewhere)
	//// For example:

	//// ... Add more high scores as needed

	//// Add a new high score
	//var newScore = obj_Score.points;  // need to change this newScore is total score at the end
	//scr_score_save(highScores, newScore);
	//room_goto(rm_Highscore);
	
	
	//highScores = scr_score_load();

	//// Display the loaded high scores in the output window
	//for (var i = 0; i < ds_list_size(highScores); i++) {
	//    show_debug_message("High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i)));
	//}

	
}









//if (global.coins == 0)
//{
//	var highScores = scr_score_load();

//	//// Add existing high scores to the list (assuming you have them stored somewhere)
//	//// For example:

//	//// ... Add more high scores as needed

//	//// Add a new high score
//	var newScore = obj_Score.points;  // need to change this newScore is total score at the end
//	scr_score_save(highScores, newScore);
//	room_goto(rm_Highscore);
	
	
//	//highScores = scr_score_load();

//	//// Display the loaded high scores in the output window
//	//for (var i = 0; i < ds_list_size(highScores); i++) {
//	//    show_debug_message("High Score " + string(i+1) + ": " + string(ds_list_find_value(highScores, i)));
//	//}

	
//}
