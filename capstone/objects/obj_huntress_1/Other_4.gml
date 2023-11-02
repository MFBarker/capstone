/// @description Insert description here
// You can write your code in this editor

if stage == 0 {
    path_start(path, spd, path_action_stop, 0);
    stage = 1;
	//path_start(path_to_follow, 2, path_action_reverse, true);
	state = ANIM._RUN;
}