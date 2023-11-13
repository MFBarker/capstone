/// @description Insert description here
// You can write your code in this editor

vspd += grav;

if(place_meeting(x, y+vspd,obj_walkable))
{
	while (!place_meeting(x, y + sign(vspd),obj_walkable))
	{
		y+= sign(vspd);
	}
	vspd = 0;
}

//commit to move
y += vspd;
