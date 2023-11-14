/// @description Insert description here
// You can write your code in this editor
var current_room = room_get_name(room);
var obj = asset_get_index(current_room);

var rm = room_get_viewport(room,0);

if((room_get_name(room) != "rm_title" && room_get_name(room) != "rm_credits" && room_get_name(room) != "rm_world_select") && obj > -1)
//if(room_get_name(room) == "rm_hub")
{
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	//health
	draw_text(rm[1] + 10,rm[2]+ 10,string_concat("HEALTH: ",health,"/",100));
	//coin
	draw_text(rm[1] + 1000,rm[2]+ 10,string_concat("SCORE: ",score));
	//

}
