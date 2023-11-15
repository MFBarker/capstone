//offsets
hp_offset_x = 10;
score_offset_x = 1100;
lives_offset_y = 40;

top_offset_y = 10;

//code
var rm = room_get_viewport(room,0);
var cam = room_get_camera(room,0);

var cam_x = camera_get_view_x(cam)
var cam_y = camera_get_view_y(cam)

//Get Object Position In Camera
var cam_pos_x = x - cam_x;
var cam_pos_y = y - cam_y;

if(room_get_name(room) != "rm_title" && room_get_name(room) != "rm_credits" && room_get_name(room) != "rm_world_select")
{
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	//health
	draw_text(cam_pos_x + hp_offset_x, cam_pos_y + top_offset_y,string_concat("HEALTH: ",string(health),"/",string(100)));
	//score
	draw_text(cam_pos_x + score_offset_x, cam_pos_y + top_offset_y,string_concat("SCORE: ",string(score)));
	//lives
	draw_text(cam_pos_x + hp_offset_x, cam_pos_y + lives_offset_y,string_concat("LIVES: ",string(lives)));
	
}



