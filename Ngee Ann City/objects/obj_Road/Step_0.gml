/// @description Insert description here
// You can write your code in this editor


if(x != mouse_xAxis){
	//If object is on the left side of mouse position, move right
	if(x < mouse_xAxis){
		x += 10; //Increments by 1 for the x axis
		
	}
	//If object is on the right sidde of mouse position, move left
	if(x > mouse_xAxis){
		x -= 10; //Decrease by 1 for the x axis
		
	}
	//Prevent object from moving outside the grid or map
	if x < 0 {
	    x = 0; // Prevent object from moving beyond the left boundary
		
	}
	if x > room_width {
	    x = room_width; // Prevent object from moving beyond the right boundary
		
	}
}

if(y != mouse_yAxis){
	//If object is above mouse position, move down
	if(y < mouse_yAxis){
		y += 10; //Increments by 1 for the y axis
		move_snap(16, 16);
	}
	//If object is below mouse position, move up
	if(y > mouse_yAxis){
		y -= 10; //Decrease by 1 for the y axis
		move_snap(16, 16);
	}
	//Prevent object from moving outside the grid or map
	if y < 0 {
		y = 0; // Prevent object from moving beyond the top boundary
		move_snap(16, 16);
	}
	if y > room_height {
	    y = room_height; // Prevent object from moving beyond the bottom boundary
		move_snap(16, 16);
	}
}





