var _touching = place_meeting(x,y,player);

if(_touching)
{
	if(text_id != -1)
	{
		create_textbox(text_id);
	}
	global.cloak = true;
}


