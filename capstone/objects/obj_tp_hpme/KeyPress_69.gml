/// @description Insert description here
// You can write your code in this editor
var _touching = place_meeting(x,y,player);

if(_touching)
{
	if(text_id != -1)
	{
		create_textbox(text_id);
	}
	global.tp_item = true;
	audio_play_sound(snd_item_pickup,50,false);
}



