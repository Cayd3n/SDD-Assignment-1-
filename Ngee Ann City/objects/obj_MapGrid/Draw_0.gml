draw_sprite_stretched(
	spr_Background,
	0,
	x-6,
	y-6,
	12+rowLength*64,
	12+(((MAP_SLOTS-1) div rowLength)+1)*64
);


for (var i = 0; i < MAP_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 64 + 2;
	var yy = y + (i div rowLength) * 64 + 4;
	var hover = (obj_Mouse.gridHover == id) && (obj_Mouse.slotHover == i) 
	draw_sprite(spr_Grid2,hover,xx,yy) 
	if (mapgrid[i] != -1)
	{
		draw_sprite(spr_Road,mapgrid[i],xx,yy);//additional to test
		var alpha = 1.0
		if (obj_Mouse.gridDrag == id) && (obj_Mouse.gridDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
	}
}

