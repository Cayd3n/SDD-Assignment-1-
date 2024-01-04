points = 0


//Checks if the building types exist before retrieving the building type's collective score
if instance_exists(obj_Residential)
{
	points += obj_Residential.rPoints;
}
if instance_exists(obj_Commercial)
{
	points += obj_Commercial.commercialPoints;
}
if instance_exists(obj_Industrial)
{
	points += obj_Industrial.industrialPoints;
}
if instance_exists(obj_Park)
{
	points += obj_Park.pPoints; 
}
if instance_exists(obj_Road)
{
	points += obj_Road.cRoads;
}



global.points = points; //Sets global points to the current score
//show_debug_message(points) //Shows current points debug

