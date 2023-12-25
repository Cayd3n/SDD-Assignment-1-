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
	draw_sprite(spr_Grid,0,xx,yy) 
}

