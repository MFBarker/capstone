/// @description Insert description here
// You can write your code in this editor

//auto-converted from gml visual
var x_movement = x- xprevious;

if(x_movement < 0)
{
	image_xscale = -1;
	image_yscale = 1;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}