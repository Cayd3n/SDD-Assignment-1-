/// @description Insert description here
// You can write your code in this editor


if ((keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) ){
	options[selection].sprite_index = spr_Button_Idle;
	selection --;
	if (selection < 0)
	{
		selection = 3;
	}
	options[selection].sprite_index = spr_Button_Selected;
}

if ((keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))) ){
	options[selection].sprite_index = spr_Button_Idle;
	selection ++;
	if (selection > 3)
	{
		selection = 0;
	}
	options[selection].sprite_index = spr_Button_Selected;
}

if (keyboard_check_pressed(vk_enter))
{
	if (selection == 0)
	{
		room_goto(rm_Game)
	
	}else if(selection == 1)
	{
		global.load_game = true; //Set global load game to true
		room_goto(rm_Game) //Move to room game
	}
	else if(selection == 2)
	{
		room_goto(rm_Highscore)
	}else if (selection == 3)
	{
		game_end();
	}
}





