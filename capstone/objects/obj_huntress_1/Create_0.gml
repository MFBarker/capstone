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
spr_idle = spr_huntress_1_idle;
spr_run = spr_huntress_1_run;
spr_attack = spr_huntress_1_attack1;
spr_hit = spr_huntress_1_hit;
spr_death = spr_huntress_1_death;


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
state = ANIM._RUN;


//control which stage of the animation we are on
stage = 0;

//time to wait for
pause_timer_initial = room_speed * 2;
pause_timer = 0;


path = path_to_follow;
//speed of object on path
spd = 2;