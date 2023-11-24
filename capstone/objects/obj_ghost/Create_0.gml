/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
hp = 50;
attackable = true;

speed_x = 0;
speed_y = 0;

moveX = 0;
moveY = 0;

knockSpeed = 0;

//state machine
state = ANIM._IDLE;

atk_count = 0;

//sprites
spr_idle = spr_ghost_idle;
spr_run = "";
spr_attack = "";
spr_hit = "";
spr_death = spr_ghost_idle;

//path
//path_to_follow = ghost_path;
path_broken = false;
path_spd = 3;
path_actn = path_action_continue;
path_absol = true;




