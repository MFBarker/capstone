var title = room_get_name(room) != "rm_title";
var credits = room_get_name(room) != "rm_credits";
var world_select = room_get_name(room) != "rm_world_select";
var gm_over = room_get_name(room) != "rm_game_over"; 

//offsets
hp_offset_x = 10;
score_offset_x = 1100;
lives_offset_y = 40;

top_offset_y = 10;

//code
var rm = room_get_viewport(room,0);
var cam = room_get_camera(room,0);

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

//Get Object Position In Camera
var cam_pos_x = x - cam_x;
var cam_pos_y = y - cam_y;

if(title && credits && world_select && gm_over)
{
	if(!pause)
	{
		draw_set_font(fnt_ui);
		draw_set_color(c_white);
		//health
		draw_text(cam_pos_x + hp_offset_x, cam_pos_y + top_offset_y,string_concat("HEALTH: ",string(health),"/",string(global._max_health)));
		//score
		draw_text(cam_pos_x + score_offset_x, cam_pos_y + top_offset_y,string_concat("SCORE: ",string(score)));
		//lives
		draw_text(cam_pos_x + hp_offset_x, cam_pos_y + lives_offset_y,string_concat("LIVES: ",string(lives)));
	}
}


//____________________________________
if(pause)
{
	//background
	draw_set_color(c_black);
	draw_set_alpha(0.85);
	draw_rectangle(cam_pos_x,cam_pos_y,1376,768,false);
	//words
	draw_set_font(fnt_title);
	draw_set_color(c_yellow);
	draw_set_alpha(1);
	draw_text(cam_pos_x + 500,cam_pos_y + 90,"PAUSE");
	
	
	//buttons
	/*
	                     PAUSE
	Controlls							|stats
										|
										|
										|
										|
										|
										|
	Back To Title						|inven
	*/
	
	
	
}



