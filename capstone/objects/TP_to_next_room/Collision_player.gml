//go back to tutorial
if(room_get_name(room) == "rm_hub"){
	instance_destroy(player);
	room_goto(rm_tutorial);
	
}
//WORLD 1
if(room_get_name(room) == "rm_w1_1"){
	room_goto(rm_w1_2);
	audio_stop_all();
	audio_play_sound(snd_w1_2,50,true);
}
else if(room_get_name(room) == "rm_w1_2"){
	room_goto(rm_w1_3);
	
}
else if(room_get_name(room) == "rm_w1_3"){
	room_goto(rm_w1_4);
	
}
else if(room_get_name(room) == "rm_w1_4"){
	room_goto(rm_w1_5);
	
}
//WORLD 2

