///@description Place turret
if (image_index == 0) {//if no obstructions (then image_index will be 0)
	//create obstruction and set its sprite to the size of the turret, to stop placing turrets over each other
	var _o = instance_create_layer(x-24,y-24,"Obstructions",obj_obstruction);
	_o.sprite_index = spr_obstruction_turret;
    instance_create_layer(x,y,"Turrets",obj_turret);//create turret
}