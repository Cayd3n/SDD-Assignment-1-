gridHover = -1;
slotHover = -1;
gridDrag = -1;
slotDrag = -1;
itemDrag = -1;



mouseOver = function()
{
	//Empty grid from hover results
	slotHover = -1;
	gridHover = -1;
	
	//mouse coordinates
	var mx = mouse_x;
	var my = mouse_y;
	
	//Check for grid slot hover
	with(obj_MapGrid)
	{
		if(point_in_rectangle
		(
			mx,
			my,
			x-6,
			y-6,
			12+rowLength*64,
			12+(((MAP_SLOTS-1) div rowLength)+1)*64
		))
		{
			//check for mouseover in each slot
			for(var i = 0; i < MAP_SLOTS; i += 1)
			{
				var xx = x + (i mod rowLength) * 64 + 2;
				var yy = y + (i mod rowLength) * 64 + 4;
				if(point_in_rectangle(mx,my,xx,yy,xx+64,yy+64))
				{
					other.slotHover = i;
					other.gridHover = id;
				}
			}
		}
	}
}
	

stateFree = function()
{
	mouseOver();
	//Start to drag item if slot is not empty
	if(mouse_check_button(mb_left)) && (slotHover != -1) && (gridHover.mapgrid[slotHover] != -1)
	{
		//Enter drag state
		state = stateDrag;
		itemDrag = gridHover.mapgrid[slotHover];
		gridDrag = gridHover;
		slotDrag = slotHover;
	}
}

stateDrag = function()
{
	mouseOver();
	if(!mouse_check_button(mb_left)) 
	{
		//Swap with slot if hovering
		if(slotHover != -1) GridSwap(gridDrag, slotDrag, gridHover, slotHover)
		
		//Return to free state
		
		state = stateFree;
		itemDrag = -1;
		gridDrag = -1;
		slotDrag = -1;
	}
}
	
state = stateFree;





