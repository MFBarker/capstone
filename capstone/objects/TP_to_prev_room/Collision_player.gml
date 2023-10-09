//go back to hub
if(room_get_name(room) == "rm_tutorial"){
	instance_destroy(player);
	room_goto(rm_hub);
}
//World 1
if(room_get_name(room) == "rm_w1_2"){
	room_goto(rm_w1_1);
	audio_stop_all();
	audio_play_sound(snd_w1_1,50,true);
}
else if(room_get_name(room) == "rm_w1_3"){
	room_goto(rm_w1_2);
	
}
else if(room_get_name(room) == "rm_w1_4"){
	room_goto(rm_w1_3);
	
}