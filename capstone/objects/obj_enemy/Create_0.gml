/// @description Insert description here
// You can write your code in this editor
hp = 50;
attackable = true;

speed_x = 0;
speed_y = 0;

moveX = 0;
moveY = 0;

knockSpeed = 0;

//sprites
spr_idle = "";
spr_run = "";
spr_attack = "";
spr_hit = "";
spr_death = "";

//animation
enum ANIM
{
	_IDLE,
	_RUN,
	_ATTACK,
	_HIT,
	_DEATH
}
//state machine
state = ANIM._IDLE;

atk_count = 0;

//path
//path_to_follow = obj_variable;
path_broken = false;
path_spd = 0;
path_actn = path_action_stop;
path_absol = false;