var _touching = place_meeting(x,y,player);

if(_touching)
{
	score += 1000
	audio_play_sound(snd_coin,25,false);
	instance_destroy();
}



