/// @description Insert description here
// You can write your code in this editor
var _touching = place_meeting(x,y,player);

if(_touching)
{
	audio_play_sound(snd_potion_collect,50,false);
	show_debug_message("you just drank poison");
	drank_poison = true;
	//instance_deactivate_object(inst_6313AC99);
}








