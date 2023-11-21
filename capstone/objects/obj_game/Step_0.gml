//tp back to hub (DEBUG ONLY)
if(keyboard_check(ord("K")))
{
	instance_destroy(player);
	room_goto(rm_hub);
}

//exit if escape key (DEBUG ONLY)
if(keyboard_check(vk_escape))
{
	game_end(0); //end game with no errors
}

//test stuff
if(keyboard_check_pressed(ord("M")))
{
	score += 100;
}
if(keyboard_check_pressed(ord("N")))
{
	if(health != 0)
	{
		health -= 10;
	}
}
if(keyboard_check_pressed(ord("B")))
{
	if(health != 0)
	{
		health -= 10;
	}
}

//____________________PAUSE MENU___________________

//unpause
if (keyboard_check_pressed(vk_tab) && pause == true)
{
	pause = false;
	draw_clear_alpha(c_white,0);
	global.can_move = true;
	//debug
	show_debug_message("UNPAUSE");
	show_debug_message(string(pause));
}
//pause
else if(keyboard_check_pressed(vk_tab))
{
	pause = true;
	global.can_move = false;
	//debug
	show_debug_message("PAUSE");
	show_debug_message(string(pause));
	
}





//-------------music------------------
//hub,tutorial,cave
if(room_get_name(room) == "rm_hub"){
	if(!audio_is_playing(snd_hub))
	{
		audio_stop_all();
		audio_play_sound(snd_hub,50,true);
	}
	
}
else if(room_get_name(room) == "rm_tutorial"){
	if(!audio_is_playing(snd_hub))
	{
		audio_stop_all();
		audio_play_sound(snd_hub,50,true);
	}
}
else if(room_get_name(room) == "rm_cave"){
	if(!audio_is_playing(snd_cave))
	{
		audio_stop_all();
		audio_play_sound(snd_cave,50,true);
	}
}
else if(room_get_name(room) == "rm_game_over")
{
	if(!audio_is_playing(snd_gameOver))
	{
		audio_stop_all();
		audio_play_sound(snd_gameOver,50,true);
	}
}
//World 1
else if(room_get_name(room) == "rm_w1_1"){
	if(!audio_is_playing(snd_w1_1))
	{
		audio_stop_all();
		audio_play_sound(snd_w1_1,50,true);
	}
}
else if(room_get_name(room) == "rm_w1_2"){
	if(!audio_is_playing(snd_w1_2))
	{
		audio_stop_all();
		audio_play_sound(snd_w1_2,50,true);
	}
	
}
else if(room_get_name(room) == "rm_w1_3"){
	if(!audio_is_playing(snd_w1_3))
	{
		audio_stop_all();
		audio_play_sound(snd_w1_3,50,true);
	}
	
}
else if(room_get_name(room) == "rm_w1_4"){
	if(!audio_is_playing(snd_w1_4))
	{
		audio_stop_all();
		audio_play_sound(snd_w1_4,50,true);
	}
}
else if(room_get_name(room) == "rm_w1_5"){
	if(!audio_is_playing(snd_w1_5))
	{
		audio_stop_all();
		audio_play_sound(snd_w1_5,50,true);
	}
}

//game over & lose life
if (health <= 0)
{
	if(lives <= 0)
	{
		//game over
		global.can_move = false;
		if(alarm[0] == -1)
		{
			alarm[0] = 10;
		}
		
		show_debug_message(alarm_get(0));
	}
	else
	{
		lives--;
		health = global._max_health;
	}
}