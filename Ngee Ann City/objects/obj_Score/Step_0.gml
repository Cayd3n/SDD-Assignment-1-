var points = 0

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


//points += obj_Residential.rPoints;
//points += obj_Commercial.commercialPoints;
//points += obj_Industrial.industrialPoints;
//points += obj_Park.pPoints; 
//points += obj_Road.cRoads;

show_debug_message(points)