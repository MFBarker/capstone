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

//state machine
state = ANIM._RUN;