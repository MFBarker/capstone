
//animations & movement
speed_x = x - xprevious;
speed_y = y - yprevious;

if (speed_x >= 1)
{
	sprite_index = spr_idle;
	image_xscale = 3;
	image_yscale = 3;
}
else if (speed_x < 1)
{
	sprite_index = spr_idle;
	image_xscale = -3;
	image_yscale = 3;
}