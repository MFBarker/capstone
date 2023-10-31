//ditection (facing)
speed_x = x - xprevious;
speed_y = y - yprevious;

if (speed_x >= 1)
{
	//sprite_index = spr_idle;
	image_xscale = 4;
	image_yscale = 4;
}
else if (speed_x < 1)
{
	//sprite_index = spr_idle;
	image_xscale = -4;
	image_yscale = 4;
}


