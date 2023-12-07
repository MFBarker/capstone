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

atk_count = 0;

//control which stage of the animation we are on
state = ANIM._IDLE;

//time to wait for
pause_timer_initial = room_speed * 2;
pause_timer = 0;


//path
//path_to_follow = huntress_path;
path_broken = false;
path_spd = 3;
path_actn = path_action_continue;
path_absol = true;