//offsets
pause_offset_x = 10;

pause_offset_y = 10;

//code
var rm = room_get_viewport(room,0);
var cam = room_get_camera(room,0);

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

//Get Object Position In Camera
var cam_pos_x = x - cam_x;
var cam_pos_y = y - cam_y;

var _x = cam_pos_x + pause_offset_x;
var _y = cam_pos_y + pause_offset_y;


draw_set_font(fnt_ui);
draw_set_color(c_white);

//pause




