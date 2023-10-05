/// @description Movement
// You can write your code in this editor

//Left
if(keyboard_check_pressed(vk_left))
{
	speed=3;
	direction=180;
	image_angle=0; //fix
	sprite_index = spr_temp_player_run;
}
if(keyboard_check_pressed(ord("A")))
{
	speed=3;
	direction=180;
	image_angle= 0;//fix
	sprite_index = spr_temp_player_run;
}

//Right
if(keyboard_check_pressed(vk_right))
{
	speed=3;
	direction=0;
	image_angle=0;
	sprite_index = spr_temp_player_run;
}
if(keyboard_check_pressed(ord("D")))
{
	speed=3;
	direction=0;
	image_angle=0;
	sprite_index = spr_temp_player_run;
}

//Jump
if(keyboard_check_pressed(vk_space))
{
	speed=3;
	direction=90;
}
else if(keyboard_check_released(vk_space))
{
	speed=0;
}

//return to idle
if(keyboard_check_released(vk_left) || keyboard_check_released(vk_right) || keyboard_check_released(ord("A")) || keyboard_check_released(ord("D")))
{
	sprite_index = spr_temp_player_idle;
	speed = 0;
}