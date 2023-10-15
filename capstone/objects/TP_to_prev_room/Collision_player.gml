//go back to hub
if(room_get_name(room) == "rm_tutorial"){
	instance_destroy(player);
	room_goto(rm_hub);
	
}
//World 1
if(room_get_name(room) == "rm_w1_2"){
	instance_destroy(player);
	room_goto(rm_w1_1);
	audio_stop_all();
	audio_play_sound(snd_w1_1,50,true);
}
else if(room_get_name(room) == "rm_w1_3"){
	instance_destroy(player);
	room_goto(rm_w1_2);
	audio_stop_all();
	audio_play_sound(snd_w1_2,50,true);
	
}
else if(room_get_name(room) == "rm_w1_4"){
	instance_destroy(player);
	room_goto(rm_w1_3);
	audio_stop_all();
	audio_play_sound(snd_w1_3,50,true);
}

//cave
if (room_get_name(room) == "rm_cave")
{
	instance_destroy(player);
	room_goto(rm_hub);
	audio_stop_all();
	audio_play_sound(snd_hub,50,true);
}