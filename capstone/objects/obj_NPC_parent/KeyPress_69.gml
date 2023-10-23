/// @description Interact With Character
// You can write your code in this editor

var _touching = place_meeting(x,y,player);

if(_touching)
{
	if(text_id != -1)
	{
		create_textbox(text_id);
	}
}
