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
	draw_rectangle(0, 0, 1376, 768, false);
	
	draw_set_color(#b3b2b1);
	draw_set_alpha(1);
	draw_rectangle(678, 200, 1350, 748,false);
	
	draw_set_color(#474233);
	draw_rectangle(700, 650, 1000, 740,false);
	
	draw_sprite(spr_controls,1,32,200);
	
	//words
	draw_set_font(fnt_title);
	draw_set_color(c_yellow);
	draw_set_alpha(1);
	draw_text(500, 90,"PAUSE");
	
	draw_set_font(fnt_credits);
	draw_set_color(c_black);
	draw_text(930,220,"STATS");
	draw_set_font(fnt_zig);
	//health
	draw_text(700, 300,string_concat("HEALTH: ",string(health),"/",string(global._max_health)));
	//score
	draw_text(700, 350,string_concat("SCORE: ",string(score)));
	//lives
	draw_text(1200, 300,string_concat("LIVES: ",string(lives)));
	
	
	//invn items
	if(global.cloak)draw_sprite(spr_magic_cloak,1, 750, 700);
	if(global.tp_item) draw_sprite(spr_tp_home_small,1,810,665);
	
	
	/*
	Return To Title
	Base of code from KI3XY on reddit (modified to fit what I need)
	https://www.reddit.com/r/gamemaker/comments/mq1a6s/what_is_the_best_way_to_make_a_clickable_button/
	*/

	//Draw UI
	draw_set_color(c_gray);
	draw_button(32, 638, 320, 736, !mouse_check_button(mb_left));
	draw_set_color(c_white);
	draw_text(125, 680, "Title"); //draw button text
	if(mouse_check_button_pressed(mb_left))
	{
		if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),cam_pos_x + 32, cam_pos_y + 638, cam_pos_x + 320, cam_pos_y + 736) == true)
		{
			draw_clear_alpha(c_white,0);
			pause = false;
			alarm[1] = 10;
		}
	}
	
	///////
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



