//go back to tutorial
if(room_get_name(room) == "rm_hub"){
	instance_destroy(player);
	room_goto(rm_tutorial);
	
}
//WORLD 1
if(room_get_name(room) == "rm_w1_2"){
	instance_destroy(player);
	room_goto(rm_w1_4);
	
}
else if(room_get_name(room) == "rm_w1_4"){
	instance_destroy(player);
	room_goto(rm_w1_5);
}
//WORLD 2

