/// @description Insert description here
// You can write your code in this editor
var _touching = place_meeting(x,y,player);

if(_touching)
{
	if(health < 100)
	{
		health = 100;
		instance_destroy();
	}
	else if(lives < 3 && health == 100)
	{
		lives++;
		instance_destroy();
	}
	show_debug_message("health potion" + string_concat(health));
}





