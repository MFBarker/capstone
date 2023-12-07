//go back to hub
if(room_get_name(room) == "rm_tutorial"){
	instance_destroy(player);
	room_goto(rm_hub);
	
}
//World 1
if(room_get_name(room) == "rm_w1_4"){
	instance_destroy(player);
	room_goto(rm_w1_2);
}

//cave
if (room_get_name(room) == "rm_cave")
{
	instance_destroy(player);
	room_goto(rm_hub);
}