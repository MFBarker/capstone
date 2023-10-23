///Clean Up Cameras
camera_destroy(view_camera[0]);

//textbox 
if (font_exists(global.font_text))
{
	font_delete(global.font_text);
}
