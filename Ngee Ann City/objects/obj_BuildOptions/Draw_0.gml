draw_sprite_stretched(
	spr_Background,
	0,
	x-6,
	y-6,
	12+rowLength*64,
	12+(((MAP_SLOTS2-1) div rowLength)+1)*64
);


for (var i = 0; i < MAP_SLOTS2; i += 1)
{
	var xx = x + (i mod rowLength) * 64 + 4;
	var yy = y + (i div rowLength) * 64 + 4;
	draw_sprite(spr_Grid,0,xx,yy);
	var random_building = random_range(5,5);
	draw_sprite(building_list[random_building], mapgrid[i], xx, yy);
	//The mapgrid doesn't return -1 when its empty
	if (mapgrid[i] != -1)
	{
		var random_building = random_range(5,5);
		draw_sprite(building_list[random_building], mapgrid[i], xx, yy);
	}
}

