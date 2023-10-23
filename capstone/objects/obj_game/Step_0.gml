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
