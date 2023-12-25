// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameGrid(){
	var gridWidth = 2;
	draw_set_color(c_white);
	//Room Height
	for(var i = 0; i < room_height; i += 96){
		draw_line_width(0, i, room_width, i, gridWidth);
	}
	//Room Width
	for(var i = 0; i < room_width; i += 64){
		draw_line_width(i,0, i, room_height, gridWidth);
	}	
}

scr_gameGrid()