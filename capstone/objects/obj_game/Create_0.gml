//Initialise Viewports

view_enabled = true;
view_visible[0] = true;

//view_xport[0] = 0;
//view_yport[0] = 0;
//view_wport[0] = 960;
//view_hport[0] = 540;

//view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

//var _dwidth = display_get_width();
//var _dheight = display_get_height();
//var _xpos = (_dwidth / 2) - 480;
//var _ypos = (_dheight / 2) - 270;
//window_set_rectangle(_xpos, _ypos, 960, 540);

//surface_resize(application_surface, 960, 540);

//Textbox
global.font_text = fnt_textbox;

//Player Stats
var _max_health = 100;
health = 100;
lives = 3;
score = 0;

var current_health = string_concat(health,"/", _max_health);
