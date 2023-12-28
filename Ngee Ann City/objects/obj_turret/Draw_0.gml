///@description Draw self
draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,1);//base
draw_sprite_ext(sprite_index,0,x,y,1,1,point_direction(x,y,mouse_x,mouse_y),c_white,1);//turret