/// @description Insert description here
// You can write your code in this editor

if(audio_is_playing(snd_potion_collect) == false && drank_poison)
{
	health = 0;
	lives = 0;
	audio_play_sound(snd_player_thump,50,false);
	//instance_destroy();
}






