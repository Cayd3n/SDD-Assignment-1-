///@description Snap to grid
//fix the object to the mouse coordinates
x = mouse_x;
y = mouse_y;
//then snap to a grid, the numbers determine the width/height in pixels of each cell in the virtual grid
move_snap(64,64);

//check for obstructions
if (collision_rectangle(x-32,y-32,x+31,y+31,obj_obstruction,1,1)) {//48x48px square covering obj_turret_place
	image_index = 1;//obstruction
}
else {
	image_index = 0;//no obstruction
}
