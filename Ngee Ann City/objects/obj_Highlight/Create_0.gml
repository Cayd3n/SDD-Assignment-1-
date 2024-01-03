//Function for highlighting grid cells without buildings
function highlight_grid(xGridCell, yGridCell) 
{
	var hightLightCellX = xGridCell + 64;
	var hightLightCellY = yGridCell + 64;
	layer_sprite_create("Highlight", hightLightCellX, hightLightCellY, spr_Highlight);
	show_debug_message("X: " + string(hightLightCellX) + "Y: " + string(hightLightCellY));
	//return draw_sprite(spr_Highlight, 0, xGridCell, yGridCell);
}