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
spr_idle = spr_huntress_2_idle;
spr_run = spr_huntress_2_run;
spr_attack = spr_huntress_2_attack;
spr_hit = spr_huntress_2_hit;
spr_death = spr_huntress_2_death;

//control which stage of the animation we are on
state = ANIM._RUN;

atk_count = 0;

//time to wait for
pause_timer_initial = room_speed * 2;
pause_timer = 0;


//path
//path_to_follow = huntress_path;
path_broken = false;
path_spd = 3;
path_actn = path_action_continue;
path_absol = true;
