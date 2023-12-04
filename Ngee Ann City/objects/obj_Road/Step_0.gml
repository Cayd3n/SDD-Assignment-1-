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
}

if(y != mouse_yAxis){
	//If object is above mouse position, move down
	if(y < mouse_yAxis){
		y += 10; //Increments by 1 for the y axis
	}
	//If object is below mouse position, move up
	if(y > mouse_yAxis){
		y -= 10; //Decrease by 1 for the y axis
	}
}


