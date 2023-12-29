/// @description Insert description here
// You can write your code in this editor


var gridSquareWidth = 64; 
var gridSquareHeight =64;







// Step Event of the park building object
var adjacentParks = 0;

// Check for adjacent parks
if (place_meeting(x + gridSquareWidth, y, obj_Park)) {
    adjacentParks += 1;
}
if (place_meeting(x - gridSquareWidth, y, obj_Park)) {
    adjacentParks += 1;
}
if (place_meeting(x, y + gridSquareHeight, obj_Park)) {
    adjacentParks += 1;
}
if (place_meeting(x, y - gridSquareHeight, obj_Park)) {
    adjacentParks += 1;
}

points = adjacentParks; // Set points to the number of adjacent parks

global.points = points; // Update global points


