/// @description Insert description here
// You can write your code in this editor

var _touching = place_meeting(x,y,player);

if(_touching)
{
	if(keyboard_check_pressed(ord("T")))
	{
		hp -= 10;
		hit++;
		show_debug_message(hp);
	}
}

if(hp <= 0 && hit = 1)
{
	instance_destroy();
}

if(keyboard_check_released(ord("T")))
{
	hit = 0;
}


