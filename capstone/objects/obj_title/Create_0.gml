/// @description Insert description here
// You can write your code in this
if(!audio_is_playing(snd_title))
{
	audio_stop_all();
	audio_play_sound(snd_title,25,true);
}

